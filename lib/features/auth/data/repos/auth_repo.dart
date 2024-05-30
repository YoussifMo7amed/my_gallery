import 'package:my_gallery/core/service/Api/api_result.dart';
import 'package:my_gallery/features/auth/data/datasource/auth_data_source.dart';
import 'package:my_gallery/features/auth/data/model/login_request.dart';
import 'package:my_gallery/features/auth/data/model/login_responce.dart';

class AuthRepos {
  AuthRepos(this._dataSource);

  final AuthDataSource _dataSource;

  Future<ApiResult<AuthResponse>> login(LoginRequestBody body) async {
    try {
      final response = await _dataSource.login(body);
      return ApiResult.success(response);
    } catch (error) {
      return  ApiResult.failure(error.toString());
    }
  }
}