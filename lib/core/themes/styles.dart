import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/colors.dart';
import 'package:flutter_advanced_app/core/themes/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font11BlueMedieum = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font12GreyReqular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.darkGreyText,
  );
  static TextStyle font13BlueReqular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font24Black700Bold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font11Grey500 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeightHelper.medium,
    color: Color(0xFF757575),
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainBlue,
  );
  static TextStyle font14GreyReqular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.grey,
  );
  static TextStyle font14LightGreyReqular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.lighterGrey,
  );
  static TextStyle font16Whitew500 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    color: Colors.white,
  );
  static TextStyle font14DarkBlueMedieum = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.darkBlue,
  );
}
