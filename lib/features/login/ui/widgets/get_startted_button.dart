import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/helpers/extensions.dart';
import 'package:flutter_advanced_app/core/routing/routes.dart';
import 'package:flutter_advanced_app/core/widgets/doc_button_widget.dart';

class GetStarttedButton extends StatelessWidget {
  const GetStarttedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DocButtonWidget(
      text: "Get started",
      onTap: () {
        context.pushNamed(Routes.loginScreen);
      },
    );
  }
}
