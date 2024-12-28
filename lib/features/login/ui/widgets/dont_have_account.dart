import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/helpers/extensions.dart';
import 'package:flutter_advanced_app/core/routing/routes.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Don't have account? ",
            style: TextStyles.font11Grey500.copyWith(color: Color(0xFF242424)),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.signUpScreen);
              },
            text: "Sign Up",
            style: TextStyles.font11BlueMedieum,
          ),
        ],
      ),
    );
  }
}
