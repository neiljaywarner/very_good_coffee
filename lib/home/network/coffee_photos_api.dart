import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:very_good_coffee/home/model/coffee_picture.dart';

part 'coffee_photos_api.g.dart';

@RestApi(baseUrl: 'https://coffee.alexflipnote.dev')
//ignore: one_member_abstracts
abstract class CoffeePhotosApi {
  factory CoffeePhotosApi(Dio dio, {String? baseUrl}) = _CoffeePhotosApi;

  @GET('/random.json')
  Future<CoffeePicture> getCoffeePicture();
}
