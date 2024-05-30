import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/common/widgets/custom_home_container.dart';
import 'package:my_gallery/core/styles/images/app_images.dart';

class HomeButtoms extends StatelessWidget {
  const HomeButtoms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child:  Row(
        children: [
         CustomHomeContainer(
          onTap: () {
            
          },
          image: AppImages.logout, text: 'log out',),

          Spacer(),

          CustomHomeContainer(
            onTap: () {
              
            },
            image: AppImages.upload, text: 'upload',),
        ],
      ),
    );
  }
}