import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/helpers/extensions.dart';
import 'package:flutter_advanced_app/core/routing/routes.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';

class AlreadyHaveAccunt extends StatelessWidget {
  const AlreadyHaveAccunt({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account? ",
            style: TextStyles.font11Grey500.copyWith(color: Color(0xFF242424)),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.loginScreen);
              },
            text: "Login",
            style: TextStyles.font11BlueMedieum,
          ),
        ],
      ),
    );
  }
}
