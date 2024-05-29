import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/styles/images/app_images.dart';
import 'package:my_gallery/features/auth/presentation/refctors/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
         Stack(
      
          children: [
            Container(
           constraints:  BoxConstraints.loose( Size(375.w, 812.h)),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.appBackground),
            fit: BoxFit.cover,
          ),
        ),
            ),
            //Login Body
            const Expanded(child: LoginBody()),
          ],
                 ),
      
    );
  }
}
