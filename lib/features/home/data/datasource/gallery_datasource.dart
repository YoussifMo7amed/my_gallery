import 'package:my_gallery/core/service/Api/api_service.dart';
import 'package:my_gallery/features/home/data/model/gallery_responce.dart';

class GalleryDataSource {
  GalleryDataSource(this._api);

  final ApiService _api;

  Future<GalleryResponse> getGallery(String token) async {
    try {
      final response = await _api.gallery('Bearer $token');
      return response;
    } catch (e) {
      rethrow; // You can handle specific errors here or rethrow them.
    }
  }
}
