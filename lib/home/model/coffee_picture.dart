import 'package:json_annotation/json_annotation.dart';

part 'coffee_picture.g.dart';

@JsonSerializable()
class CoffeePicture {
  CoffeePicture({required this.file});

  factory CoffeePicture.fromJson(Map<String, dynamic> json) =>
      _$CoffeePictureFromJson(json);
  @JsonKey(name: 'file')
  String file;
}
