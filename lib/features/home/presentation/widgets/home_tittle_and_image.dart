import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/common/widgets/text_app.dart';
import 'package:my_gallery/core/service/shared_pref/pref_keys.dart';
import 'package:my_gallery/core/service/shared_pref/shared_pref.dart';
import 'package:my_gallery/core/styles/images/app_images.dart';
import 'package:my_gallery/core/theme/styles.dart';

class HomeTittleAndImage extends StatelessWidget {
  HomeTittleAndImage({super.key});
  final String? name = SharedPref().getString(PrefKeys.name);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        children: [
          TextApp(
              text: 'Welcome\n $name ',
              theme: TextStyles.font32deepgreysemiBold),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 30.h, right: 0.w),
            child: Container(
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage(
                    AppImages.avatar,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
