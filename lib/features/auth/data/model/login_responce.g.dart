// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponce _$LoginResponceFromJson(Map<String, dynamic> json) =>
    LoginResponce(
      json['data'] == null
          ? null
          : LoginDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponceToJson(LoginResponce instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

LoginDataModel _$LoginDataModelFromJson(Map<String, dynamic> json) =>
    LoginDataModel(
      json['login'] == null
          ? null
          : LoginModel.fromJson(json['login'] as Map<String, dynamic>),
      json['token'] as String?,
    );

Map<String, dynamic> _$LoginDataModelToJson(LoginDataModel instance) =>
    <String, dynamic>{
      'login': instance.login,
      'token': instance.token,
    };

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
