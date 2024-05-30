import 'package:image_picker/image_picker.dart';
import 'package:my_gallery/core/apps/upload_image/datasource/upload_image_datasource.dart';
import 'package:my_gallery/core/apps/upload_image/model/upload_image_responce.dart';
import 'package:my_gallery/core/service/Api/api_result.dart';

class UploadImageRepo {
  UploadImageRepo(this._dataSource);

  final UploadImageDataSource _dataSource;

  Future<ApiResult<UploadImageResponse>> uploadImage({
    required XFile imageFile,
    required String token,
  }) async {
    try {
      final response = await _dataSource.uploadImage(imageFile: imageFile, token: token);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
