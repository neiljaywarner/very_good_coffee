import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:very_good_coffee/app/app.dart';

part 'photos_repository.g.dart';

@riverpod
Future<String> getCoffeePictureUrl(GetCoffeePictureUrlRef _) async {
  firstPicture = !firstPicture;
  return firstPicture ? hardcodedUrl1 : hardcodedUrl2;
}

bool firstPicture = false;
