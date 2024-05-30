import 'package:dio/dio.dart';
import 'package:my_gallery/core/service/Api/api_service.dart';
import 'package:my_gallery/features/auth/data/model/login_request.dart';
import 'package:my_gallery/features/auth/data/model/login_responce.dart';
import 'package:my_gallery/features/home/data/model/gallery_responce.dart';


class GalleryDataSource {
  GalleryDataSource(this._api);

  final ApiService _api;

Future<GalleryResponse> getgallery(String token) async {

    final response =
        await _api.gallery(token);
    return response;
}
  // Future<AuthResponse> login(LoginRequestBody body) async {
  //    final formData = FormData();
  //   formData.fields.add(MapEntry('email', body.email!));
  //   formData.fields.add(MapEntry('password', body.password!));
  //   final response =
  //       await _api.login(formData);
  //   return response;
  // }

  
}
