import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "By logging, you agree to our ",
              style:
                  TextStyles.font11Grey500.copyWith(color: Color(0xFF9E9E9E))),
          TextSpan(
              text: "Terms & Conditions",
              style:
                  TextStyles.font11Grey500.copyWith(color: Color(0xFF242424))),
          TextSpan(
              text: " and ",
              style:
                  TextStyles.font11Grey500.copyWith(color: Color(0xFF9E9E9E))),
          TextSpan(
              text: "\nPrivacy Policy.",
              style: TextStyles.font11Grey500
                  .copyWith(color: Color(0xFF242424), height: 1.7)),
        ]));
  }
}
