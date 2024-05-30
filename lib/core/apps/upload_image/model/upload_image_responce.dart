import 'package:json_annotation/json_annotation.dart';

part 'upload_image_responce.g.dart';
@JsonSerializable()
class UploadImageResponse {
  final String status;
  final List<dynamic> data;
  final String message;

  UploadImageResponse({
    required this.status,
    required this.data,
    required this.message,
  });

  factory UploadImageResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadImageResponseFromJson(json);

}
