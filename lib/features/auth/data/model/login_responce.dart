import 'package:json_annotation/json_annotation.dart';
part 'login_responce.g.dart';

@JsonSerializable()
class LoginResponce {
  LoginResponce(this.data);

  factory LoginResponce.fromJson(Map<String, dynamic> json) =>
      _$LoginResponceFromJson(json);
  LoginDataModel? data;
}

@JsonSerializable()
class LoginDataModel {
  LoginDataModel(this.login,this.token);

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
  LoginModel? login;
  String?token;
}

@JsonSerializable()
class LoginModel {
  LoginModel({required this.id, required this.name});
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  final int? id;
  final String? name;
}
