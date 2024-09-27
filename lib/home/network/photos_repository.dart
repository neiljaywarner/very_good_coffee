import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:very_good_coffee/home/model/coffee_picture.dart';
import 'package:very_good_coffee/home/network/coffee_photos_api.dart';

part 'photos_repository.g.dart';

@Riverpod(keepAlive: false)
Future<String> getCoffeePictureUrl(GetCoffeePictureUrlRef ref) async =>
    (await ref.watch(photosRepositoryProvider).getCoffeePicture()).file;

@Riverpod(keepAlive: false)
Future<List<String>> getCoffeePicturePaths(GetCoffeePicturePathsRef ref) async =>
    ref.watch(photosRepositoryProvider).getCoffeePicturePaths();

@Riverpod(keepAlive: false)
Future<String> saveCoffeePictureUrl(SaveCoffeePictureUrlRef ref, String url) async =>
    ref.watch(photosRepositoryProvider).saveCoffeePicture(url);

// TODO(neiljaywarner) With patrol we can test offline/airplane mode the picture can be seen
// https://pub.dev/documentation/patrol/latest/patrol/NativeAutomator/enableAirplaneMode.html
// https://github.com/leancodepl/patrol/issues/1359

class FakePhotosRepository extends IPhotosRepository {
  FakePhotosRepository();

  String hardcodedUrl1 = 'https://coffee.alexflipnote.dev/n2umtTs_y80_coffee.jpg';
  String hardcodedUrl2 = 'https://coffee.alexflipnote.dev/KwS5dWCe9gQ_coffee.jpg';

  bool firstPicture = false;

  @override
  Future<CoffeePicture> getCoffeePicture() async {
    firstPicture = !firstPicture;
    return firstPicture ? CoffeePicture(file: hardcodedUrl1) : CoffeePicture(file: hardcodedUrl2);
  }

  @override
  Future<String> saveCoffeePicture(String url) {
    // TODO(neiljaywarner): implement saveCoffeePicture
    throw UnimplementedError();
  }

  @override
  Future<List<String>> getCoffeePicturePaths() {
    // TODO: implement getCoffeePicturePaths
    throw UnimplementedError();
  }
}

abstract class IPhotosRepository {
  Future<CoffeePicture> getCoffeePicture();

  Future<String> saveCoffeePicture(String url);

  Future<List<String>> getCoffeePicturePaths();
}

class PhotosRepository extends IPhotosRepository {
  PhotosRepository(this._coffeePhotosApi);

  final CoffeePhotosApi _coffeePhotosApi;
  String directoryString = '';

  @override
  Future<CoffeePicture> getCoffeePicture() async => _coffeePhotosApi.getCoffeePicture();

  /// Returns the path the file is saved to or throws exception if error.
  @override
  Future<String> saveCoffeePicture(String url) async {
    final fileName = url.split('/').last;
    if (directoryString.isEmpty) {
      directoryString = '${(await getApplicationDocumentsDirectory()).path}/coffee_images';
    }
    final path = '$directoryString/$fileName';
    // TODO(neiljaywarner): DioProvider, fakeDio, etc.
    final response = await Dio().download(url, path);
    debugPrint(response.statusMessage);
    debugPrint(path);

    return path;
  }

  @override
  Future<List<String>> getCoffeePicturePaths() async {
    final picturePaths = List<String>.empty(growable: true);
    if (directoryString.isEmpty) {
      directoryString = '${(await getApplicationDocumentsDirectory()).path}/coffee_images';
    }
    final dir = Directory(directoryString);
    final files = dir.listSync();
    for (final file in files) {
      debugPrint(file.path);
      picturePaths.add(file.path);
    }
    return picturePaths;
  }
// TODO(neiljaywarner): Try/catchy and handle exceptions with error popup ref.listen()
}

@Riverpod(keepAlive: true)
IPhotosRepository photosRepository(PhotosRepositoryRef ref) =>
    PhotosRepository(CoffeePhotosApi(ref.watch(dioProvider)));

// Note: Can use dio Logging interceptor here or even fakeDio here
// see:https://github.com/rrousselGit/riverpod/blob/master/examples/marvel/lib/src/fake_marvel.dart
@Riverpod(keepAlive: true)
Dio dio(DioRef _) => Dio();
