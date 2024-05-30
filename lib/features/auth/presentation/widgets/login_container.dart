import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/common/widgets/text_app.dart';
import 'package:my_gallery/core/theme/styles.dart';
import 'package:my_gallery/features/auth/presentation/widgets/login_buttom.dart';
import 'package:my_gallery/features/auth/presentation/widgets/login_text_fields.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          height: 350.h,
          width: 360.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.6),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              //Login Tittle
              TextApp(text: 'LOG IN', theme: TextStyles.font30deepgreyBold),
              SizedBox(height: 20.h),
              //Login Text Fields
              const LoginTextFields(),
              SizedBox(
                height: 30.h,
              ),
              //Login Buttom
              const LoginButtom(),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
