import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_gallery/core/styles/images/app_images.dart';
import 'package:my_gallery/features/home/presentation/refactors/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
               Container(
                constraints: const BoxConstraints.expand(),
                child: Expanded(child: SvgPicture.asset(
                  height: 100.h,
                  width: 100.w,
                  AppImages.homeShape))),
                Container(
                  constraints: const BoxConstraints.expand(),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.homeScreen),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
        
              ],
            ),
            //Login Body
            const Expanded(child: HomeBody()),
          ],
        ),
      ),
    );
  }
}