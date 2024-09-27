import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:very_good_coffee/home/model/coffee_picture.dart';
import 'package:very_good_coffee/home/network/coffee_photos_api.dart';

part 'photos_repository.g.dart';

@Riverpod(keepAlive: false)
Future<String> getCoffeePictureUrl(GetCoffeePictureUrlRef ref) async =>
    (await ref.watch(photosRepositoryProvider).getCoffeePicture()).file;

class FakePhotosRepository extends IPhotosRepository {
  FakePhotosRepository();

  String hardcodedUrl1 =
      'https://coffee.alexflipnote.dev/n2umtTs_y80_coffee.jpg';
  String hardcodedUrl2 =
      'https://coffee.alexflipnote.dev/KwS5dWCe9gQ_coffee.jpg';

  bool firstPicture = false;

  @override
  Future<CoffeePicture> getCoffeePicture() async {
    firstPicture = !firstPicture;
    return firstPicture
        ? CoffeePicture(file: hardcodedUrl1)
        : CoffeePicture(file: hardcodedUrl2);
  }
}

abstract class IPhotosRepository {
  //ignore: one_member_abstracts
  Future<CoffeePicture> getCoffeePicture();
}

class PhotosRepository extends IPhotosRepository {
  PhotosRepository(this._coffeePhotosApi);

  final CoffeePhotosApi _coffeePhotosApi;

  @override
  Future<CoffeePicture> getCoffeePicture() async =>
      _coffeePhotosApi.getCoffeePicture();
}

@Riverpod(keepAlive: true)
IPhotosRepository photosRepository(PhotosRepositoryRef ref) =>
    PhotosRepository(CoffeePhotosApi(ref.watch(dioProvider)));

// Note: Can use dio Logging interceptor here or even fakeDio here
// see: https://github.com/rrousselGit/riverpod/blob/master/examples/marvel/lib/src/fake_marvel.dart
@Riverpod(keepAlive: true)
Dio dio(DioRef _) => Dio();
