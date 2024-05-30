import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery/core/apps/upload_image/repo/upload_image_repo.dart';
import 'package:my_gallery/core/utils/image_pick.dart';
part 'upload_image_state.dart';
part 'upload_image_cubit.freezed.dart';

class UploadImageCubit extends Cubit<UploadImageState> {
  UploadImageCubit(this._repo) : super(const UploadImageState.initial());

  final UploadImageRepo _repo;

  Future<void> uploadImage({
    required String token,
    required ImageSource source,
  }) async {
    final pickedImage = await PickImageUtils().pickImage(source: source);

    if (pickedImage == null) return;
    emit(const UploadImageState.loading());
    final result =
        await _repo.uploadImage(imageFile: pickedImage, token: token);
    result.when(
      success: (image) {
        emit(const UploadImageState.success());
      },
      failure: (error) {
        emit(UploadImageState.error(error: error));
      },
    );
  }
}
