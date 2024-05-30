import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_gallery/core/styles/fonts/font_wieght_helper.dart';
import 'package:my_gallery/core/theme/colors.dart';


class TextStyles {
  static TextStyle font50deepgreyBold = TextStyle(
    fontSize: 50.sp,
    fontWeight: FontweightHelper.bold,
    color: ColorsManager.textColor,
  );

  static TextStyle font30deepgreyBold = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontweightHelper.bold,
    color: ColorsManager.textColor,
  );
   static TextStyle font32deepgreysemiBold = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontweightHelper.medium,
    color: ColorsManager.textColor,
  );

}