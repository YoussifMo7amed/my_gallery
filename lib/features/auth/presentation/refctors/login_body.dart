import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/common/widgets/text_app.dart';
import 'package:my_gallery/core/styles/images/app_images.dart';
import 'package:my_gallery/core/theme/styles.dart';
import 'package:my_gallery/features/auth/presentation/widgets/login_container.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        minimum: EdgeInsets.only(top: 120.h),
        child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h),
              child: Stack(
                children: [
                 Positioned(
                  top: 150.h,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    
                    AppImages.loginShapes)),
                  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                       
                          //Login Tittle
                          TextApp(
                            text: 'My\nGallery',
                            theme: TextStyles.font50deepgreyBold,
                            textAlign: TextAlign.center,
                          ),
                          //Login Container
                          SizedBox(height: 30.h),
                          const LoginContainer(),
                        ],
                  ),
                ],
              ),
            ),
      ),
    ) ;
  }
}
