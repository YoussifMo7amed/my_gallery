// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallery_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GalleryResponse _$GalleryResponseFromJson(Map<String, dynamic> json) =>
    GalleryResponse(
      status: json['status'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );


Data _$DataFromJson(Map<String, dynamic> json) => Data(
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

