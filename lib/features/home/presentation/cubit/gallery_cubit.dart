import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_gallery/features/home/data/model/gallery_responce.dart';
import 'package:my_gallery/features/home/data/repo/gallery_repo.dart';

part 'gallery_state.dart';
part 'gallery_cubit.freezed.dart';
class GalleryCubit extends Cubit<GalleryState> {
  GalleryCubit(this._repos) : super(const GalleryState.initial());
  final GalleryRepo _repos ;
  Future<void> gallery({required String token}) async {
    emit(const GalleryState.loading());
    final response =
        await _repos.getGallery( token);
    response.when(success: (galleryData) async {
      emit(GalleryState.success(login: galleryData));
    }, failure: (error) {
      emit(GalleryState.error(error: error));
    });
  }
}
