
import 'package:dio/dio.dart';
import 'package:my_gallery/core/apps/upload_image/model/upload_image_responce.dart';
import 'package:my_gallery/core/service/Api/end_points.dart';
import 'package:my_gallery/features/auth/data/model/login_responce.dart';
import 'package:my_gallery/features/home/data/model/gallery_responce.dart';

import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(EndPoints.login)
  Future<AuthResponse> login(
    @Body() FormData formdata,
  );
  @GET(EndPoints.gallery)
  Future<GalleryResponse> gallery(
    @Header('Authorization') String token,
  );
  @POST(EndPoints.uploadImage)
  Future<UploadImageResponse> uploadImage(
    @Header("Authorization") String token,
    @Body() FormData formdata,
  );
}
