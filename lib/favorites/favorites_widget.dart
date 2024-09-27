import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:very_good_coffee/home/network/photos_repository.dart';

class FavoritesWidget extends ConsumerWidget {
  const FavoritesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(getCoffeePicturePathsProvider).when(
        data: (paths) =>
            paths.isEmpty ? const Text('No pictures saved yet.') : Image.file(File(paths.first)),
        error: (e, __) => Text(e.toString()),
        loading: CircularProgressIndicator.adaptive);
  }
// TODO(neiljaywarner): extension method to reuse error and loading.
}
