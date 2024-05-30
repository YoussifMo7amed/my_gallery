part of 'gallery_cubit.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState.initial() = _Initial;
      const factory GalleryState.loading() = _LoadingState;
  const factory GalleryState.error({required String error}) = _ErrorState;
  const factory GalleryState.success({required GalleryResponse login}) = _SuccessState;
}
