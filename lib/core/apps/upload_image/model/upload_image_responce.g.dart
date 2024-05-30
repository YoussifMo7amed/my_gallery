// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UploadImageResponse _$UploadImageResponseFromJson(Map<String, dynamic> json) =>
    UploadImageResponse(
      status: json['status'] as String,
      data: json['data'] as List<dynamic>,
      message: json['message'] as String,
    );

Map<String, dynamic> _$UploadImageResponseToJson(
        UploadImageResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
