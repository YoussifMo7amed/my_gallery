part of 'upload_image_cubit.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState.initial() = _Initial;
  const factory UploadImageState.loading() = _LoadingState;
  const factory UploadImageState.success() = _SuccessState;
  const factory UploadImageState.error({required String error}) = _ErrorState;
}
