import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:my_gallery/core/apps/upload_image/cubit/upload_image_cubit.dart';
import 'package:my_gallery/core/apps/upload_image/datasource/upload_image_datasource.dart';
import 'package:my_gallery/core/apps/upload_image/repo/upload_image_repo.dart';
import 'package:my_gallery/core/service/Api/api_service.dart';
import 'package:my_gallery/core/service/Api/dio_factory.dart';
import 'package:my_gallery/features/auth/data/datasource/auth_data_source.dart';
import 'package:my_gallery/features/auth/data/repos/auth_repo.dart';
import 'package:my_gallery/features/auth/presentation/bloc/auth/auth_cubit.dart';
import 'package:my_gallery/features/home/data/datasource/gallery_datasource.dart';
import 'package:my_gallery/features/home/data/repo/gallery_repo.dart';
import 'package:my_gallery/features/home/presentation/cubit/gallery_cubit.dart';


final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  await _initAuth();
  await _initGallery();
 
}

Future<void> _initCore() async {
  final dio = DioFactory.getDio();
  final navigatorKey = GlobalKey<NavigatorState>();
  sl
    
    ..registerLazySingleton<ApiService>(() => ApiService(dio))
    ..registerSingleton<GlobalKey<NavigatorState>>(navigatorKey)
        ..registerFactory(() => UploadImageCubit(sl()))
    ..registerLazySingleton(() => UploadImageRepo(sl()))
    ..registerLazySingleton(() => UploadImageDataSource(sl()));
}
Future<void> _initAuth() async {
  sl
    ..registerFactory(() => AuthCubit(sl()))
    ..registerLazySingleton(() => AuthRepos(sl()))
    ..registerLazySingleton(() => AuthDataSource(sl()));
}
Future<void> _initGallery() async {
  sl
    ..registerFactory(() => GalleryCubit(sl()))
    ..registerLazySingleton(() => GalleryRepo(sl()))
    ..registerLazySingleton(() => GalleryDataSource(sl()));
}


