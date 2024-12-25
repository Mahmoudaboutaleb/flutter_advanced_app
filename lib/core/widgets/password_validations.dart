import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/colors.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasSpecialCharacters,
      required this.hasMinLength});
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasMinLength;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      buildValidationsRow("At least 8 characters", hasMinLength),
      SizedBox(
        height: 2.h,
      ),
      buildValidationsRow("At least one lowercase letter", hasLowerCase),
      SizedBox(
        height: 2.h,
      ),
      buildValidationsRow("At least one uppercase letter", hasUpperCase),
      SizedBox(
        height: 2.h,
      ),
      buildValidationsRow("At least one number", hasNumber),
      SizedBox(
        height: 2.h,
      ),
      buildValidationsRow(
          "At least one special character", hasSpecialCharacters),
    ]);
  }

  Widget buildValidationsRow(String text, bool isValid) {
    return Row(children: [
      CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 2.5,
      ),
      SizedBox(
        width: 2.h,
      ),
      Text(
        text,
        style: TextStyles.font13DarkBlueregular.copyWith(
          decoration: isValid ? TextDecoration.lineThrough : null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: isValid ? ColorsManager.grey : ColorsManager.darkBlue,
        ),
      )
    ]);
  }
}
