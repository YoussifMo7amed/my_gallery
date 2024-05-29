import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_gallery/core/service/graphql/api_service.dart';
import 'package:my_gallery/core/service/graphql/dio_factory.dart';


final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
 
}

Future<void> _initCore() async {
  final dio = DioFactory.getDio();
  final navigatorKey = GlobalKey<NavigatorState>();
  sl
    
    ..registerLazySingleton<ApiService>(() => ApiService(dio))
    ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey);
    // ..registerFactory(() => UploadImageCubit(sl()))
    // ..registerLazySingleton(() => UploadImageRepo(sl()))
    // ..registerLazySingleton(() => UploadImageDataSource(sl()));
}


