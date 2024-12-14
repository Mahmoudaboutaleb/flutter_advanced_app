import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/colors.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocTextFormField extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final bool? isSecure;
  final Widget? suffixIcon;
  final TextEditingController controller;

  const DocTextFormField(
      {super.key,
      this.hintStyle,
      this.contentPadding,
      this.focusBorder,
      this.enableBorder,
      this.inputTextStyle,
      this.isSecure,
      this.suffixIcon,
      required this.hintText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyles.font14DarkBlueMedieum,
      cursorColor: ColorsManager.mainBlue,
      obscureText: isSecure ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorsManager.greyBackgroundForm,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.w),
        suffixIcon: suffixIcon,
        suffixIconColor: ColorsManager.mainBlue,
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font14DarkBlueMedieum,
        isDense: true,
        focusedBorder: focusBorder ??
            OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide:
                    BorderSide(color: ColorsManager.mainBlue, width: 1.3)),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  BorderSide(color: ColorsManager.lighterGrey, width: 1.3),
            ),
      ),
    );
  }
}
