import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/common/widgets/text_app.dart';
import 'package:my_gallery/core/styles/images/app_images.dart';
import 'package:my_gallery/core/theme/styles.dart';

class CustomDialog {
  const CustomDialog._();

  static void twoButtonDialog({
    required BuildContext context,
    required void Function() onPressedButtom1,
    required void Function() onPressedButtom2,
  }) {
    showDialog<dynamic>(
      barrierDismissible: true,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 250.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height: 300.h,
              width: 300.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: onPressedButtom1,
                    child: Container(
                      height: 50.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        color: const Color(0XFFEFD8F9),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            Image.asset(
                              AppImages.dialogImage1,
                            ),
                            TextApp(
                                text: 'Gallery',
                                theme: TextStyles.font30deepgreyBold)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    onTap: onPressedButtom2,
                    child: Container(
                      height: 50.h,
                      width: 200.w,
                      decoration: BoxDecoration(
                        color: const Color(0XFFEBF6FF),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            Image.asset(
                              AppImages.dialogImage2,
                            ),
                            TextApp(
                                text: 'Camera',
                                theme: TextStyles.font30deepgreyBold)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
