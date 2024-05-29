import 'package:dio/dio.dart';
import 'package:my_gallery/core/service/Api/end_points.dart';
import 'package:my_gallery/features/auth/data/model/login_responce.dart';

import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';



@RestApi(baseUrl: EndPoints.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

@POST(EndPoints.login)
  Future<LoginResponce> login(
    @Body() FormData formdata,
  );
}
