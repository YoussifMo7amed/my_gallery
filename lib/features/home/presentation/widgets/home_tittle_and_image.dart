import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/common/widgets/text_app.dart';
import 'package:my_gallery/core/styles/images/app_images.dart';
import 'package:my_gallery/core/theme/styles.dart';

class HomeTittleAndImage extends StatelessWidget {
  const HomeTittleAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        children: [
          TextApp(text: 'Welcome\n Mina', theme: TextStyles.font32deepgreysemiBold),

          const Spacer(),
          Padding(
            padding:  EdgeInsets.only(bottom: 30.h,right: 0.w),
            child: Container(
              height: 60.h,
              width: 60.w,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(AppImages.loginShapes,),
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