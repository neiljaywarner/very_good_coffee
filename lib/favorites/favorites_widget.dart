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
            paths.isEmpty ? const Text('No pictures saved yet.') : FavoritesList(paths: paths),
        error: (e, __) => Text(e.toString()),
        loading: CircularProgressIndicator.adaptive);
  }
// TODO(neiljaywarner): extension method to reuse error and loading.
}

class FavoritesList extends StatelessWidget {
  const FavoritesList({required this.paths, super.key});

  final List<String> paths;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: paths.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) => Image.file(File(paths[index])),
    );
  }
}
