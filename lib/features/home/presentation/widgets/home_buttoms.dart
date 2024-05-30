import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_gallery/core/apps/upload_image/cubit/upload_image_cubit.dart';
import 'package:my_gallery/core/common/toast/show_toast.dart';
import 'package:my_gallery/core/common/widgets/custom_home_container.dart';
import 'package:my_gallery/core/dialog/custom_dialogs.dart';
import 'package:my_gallery/core/helper/extentions.dart';
import 'package:my_gallery/core/routes/routers.dart';
import 'package:my_gallery/core/service/shared_pref/pref_keys.dart';
import 'package:my_gallery/core/service/shared_pref/shared_pref.dart';
import 'package:my_gallery/core/styles/images/app_images.dart';
import 'package:my_gallery/features/home/presentation/cubit/gallery_cubit.dart';

class HomeButtoms extends StatelessWidget {
  const HomeButtoms({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context
                .read<GalleryCubit>()
                .gallery(token: SharedPref().getString(PrefKeys.accessToken)!);

            context.pop();

            ShowToast.showToastSuccessTop(
              message: 'Image uploaded successfully',
              seconds: 2,
            );
          },
          error: (error) {
            ShowToast.showToastErrorTop(
              message: error,
            );
          },
        );
      },
      builder: (context, state) {
        final cubit = context.read<UploadImageCubit>();
        final token = SharedPref().getString(PrefKeys.accessToken);
        return state.maybeWhen(loading: () {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.deepOrange,
            ),
          );
        }, orElse: () {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              children: [
                CustomHomeContainer(
                  onTap: () {
                    SharedPref().removePreference(PrefKeys.accessToken);
                    context.pushNamedAndRemoveUntil(
                      Routes.login,
                      predicate: (route) => false,
                    );
                  },
                  image: AppImages.logout,
                  text: 'log out',
                ),
                const Spacer(),
                CustomHomeContainer(
                  onTap: () {
                    CustomDialog.twoButtonDialog(
                      context: context,
                      onPressedButtom1: () {
                        cubit.uploadImage(
                            source: ImageSource.gallery, token: token!);
                      },
                      onPressedButtom2: () {
                        cubit.uploadImage(
                            source: ImageSource.camera, token: token!);
                      },
                    );
                  },
                  image: AppImages.upload,
                  text: 'upload',
                ),
              ],
            ),
          );
        });
      },
    );
  }
}
