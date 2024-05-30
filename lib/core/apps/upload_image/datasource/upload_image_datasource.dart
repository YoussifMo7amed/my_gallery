import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery/core/apps/upload_image/model/upload_image_responce.dart';
import 'package:my_gallery/core/service/Api/api_service.dart';

class UploadImageDataSource {
  const UploadImageDataSource(this._api);
  final ApiService _api;

  Future<UploadImageResponse> uploadImage({
    required XFile imageFile,
    required String token,
  }) async {
    final formData = FormData.fromMap({
      'img': await MultipartFile.fromFile(imageFile.path, filename: imageFile.name),
    });

    final response = await _api.uploadImage('Bearer $token', formData);
    return response;
  }
}
