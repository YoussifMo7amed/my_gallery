import 'package:json_annotation/json_annotation.dart';
 

part 'gallery_responce.g.dart';
@JsonSerializable()
class GalleryResponse {
  final String status;
  final Data data;
  final String message;

  GalleryResponse({
    required this.status,
    required this.data,
    required this.message,
  });

  factory GalleryResponse.fromJson(Map<String, dynamic> json) =>
      _$GalleryResponseFromJson(json);

}

@JsonSerializable()
class Data {
  final List<String> images;

  Data({required this.images});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}
