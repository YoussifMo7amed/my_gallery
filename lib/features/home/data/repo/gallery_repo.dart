import 'package:my_gallery/core/service/Api/api_result.dart';
import 'package:my_gallery/features/home/data/datasource/gallery_datasource.dart';
import 'package:my_gallery/features/home/data/model/gallery_responce.dart';

class GalleryRepo {
  GalleryRepo(this._dataSource);

  final GalleryDataSource _dataSource;

  Future<ApiResult<GalleryResponse>> gallery(String token) async {
    try {
      final response = await _dataSource.getgallery(token);
      return ApiResult.success(response);
    } catch (error) {
      return  ApiResult.failure(error.toString());
    }
  }
}