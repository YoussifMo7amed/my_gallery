import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_gallery/core/service/Api/api_service.dart';
import 'package:my_gallery/core/service/Api/dio_factory.dart';
import 'package:my_gallery/features/auth/data/datasource/auth_data_source.dart';
import 'package:my_gallery/features/auth/data/repos/auth_repo.dart';
import 'package:my_gallery/features/auth/presentation/bloc/auth/auth_cubit.dart';


final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  await _initAuth();
 
}

Future<void> _initCore() async {
  final dio = DioFactory.getDio();
  final navigatorKey = GlobalKey<NavigatorState>();
  sl
    
    ..registerLazySingleton<ApiService>(() => ApiService(dio))
    ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey);
}
Future<void> _initAuth() async {
  sl
    ..registerFactory(() => AuthCubit(sl()))
    ..registerLazySingleton(() => AuthRepos(sl()))
    ..registerLazySingleton(() => AuthDataSource(sl()));
}


