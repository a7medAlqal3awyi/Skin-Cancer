import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';

class TextStyles {
  static TextStyle font20BlackW700 = TextStyle(
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle font15BlackW400 = TextStyle(
    color: Colors.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font16GreyW400 = TextStyle(
    color: Colors.grey,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle font18PinkW500 = TextStyle(
    color: AppColor.signUptext,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
}
