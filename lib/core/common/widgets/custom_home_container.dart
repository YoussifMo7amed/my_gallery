import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/common/widgets/text_app.dart';
import 'package:my_gallery/core/styles/fonts/font_wieght_helper.dart';
import 'package:my_gallery/core/theme/colors.dart';


class CustomHomeContainer extends StatelessWidget {
  const CustomHomeContainer({ required this.image, required this.text,super.key,required this.onTap,});
final String image;
final String text;
final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        height: 40.h,
        width: 140.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(height: 30.h, width: 30.w,image),
              TextApp(text: text, theme: TextStyle(fontSize: 20.sp,fontWeight:FontweightHelper.bold ,color: ColorsManager.textColor),),
            ],
          ),
        ),
      ),
    );
  }
}
