import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:very_good_coffee/home/network/photos_repository.dart';

part 'save_coffee_picture_controller.g.dart';

@riverpod
class SaveCoffeePictureController extends _$SaveCoffeePictureController {
  @override
  FutureOr<String?> build() {
    return null;
  }

  Future<String?> save({required String url}) async {
    final repository = ref.read(photosRepositoryProvider);
    state = const AsyncLoading<String?>();
    state = await AsyncValue.guard(() => repository.saveCoffeePicture(url));
  }
}
