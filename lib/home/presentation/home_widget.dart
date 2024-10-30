import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:very_good_coffee/home/network/photos_repository.dart';
import 'package:very_good_coffee/home/presentation/save_coffee_picture_controller.dart';
import 'package:very_good_coffee/l10n/l10n.dart';
import 'package:very_good_coffee/utils/asyncvalue_ui.dart';

class HomeWidget extends ConsumerWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValueCoffee = ref.watch(getCoffeePictureUrlProvider);
    var coffeeUrl = '';
    if (asyncValueCoffee.valueOrNull != null) {
      coffeeUrl = asyncValueCoffee.value!;
    }
    ref.listen<AsyncValue<dynamic>>(
      saveCoffeePictureControllerProvider,
      (_, state) => state.showAlertDialogOnError(context),
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          asyncValueCoffee.when(
            data: (String url) => FadeInImage.memoryNetwork(
              image: url,
              imageSemanticLabel: url,
              placeholder: kTransparentImage,
              imageErrorBuilder: (context, error, stackTrace) => ColoredBox(
                color: Colors.red,
                child: Text(context.l10n.errorLoadingImage),
              ),
            ),
            error: (_, __) => const Text('Error loading coffee picture'),
            loading: CircularProgressIndicator.adaptive,
          ),
          const SizedBox(height: 10),
          OverflowBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () => ref.invalidate(getCoffeePictureUrlProvider),
                child: const Text('Load New'),
              ),
              if (coffeeUrl.isNotEmpty)
                OutlinedButton(
                  onPressed: () async =>
                      ref.read(saveCoffeePictureControllerProvider.notifier).save(url: coffeeUrl),
                  child: const Text('Save Current'),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
