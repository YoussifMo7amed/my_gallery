import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/styles/images/app_images.dart';

class ImageGridView extends StatelessWidget {
  final List<String> imagePaths = [
  AppImages.appBackground,
  AppImages.homeScreen,
  AppImages.loginShapes,
    // Add paths for all images
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              imagePaths[index],
              fit: BoxFit.cover,
            ),
          );
        },
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}