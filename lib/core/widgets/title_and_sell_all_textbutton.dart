import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';

class TitleAndSeeAllTextButton extends StatelessWidget {
  const TitleAndSeeAllTextButton(
      {super.key,
      required this.title,
      this.textButton,
      this.textButtonText,
      this.textButtonFunction});
  final String title;
  final String? textButtonText;
  final TextButton? textButton;
  final VoidCallback? textButtonFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.font18DarkBold,
        ),
        textButton ??
            TextButton(
              onPressed: textButtonFunction,
              child: Text(
                textButtonText ?? "See all",
                style: TextStyles.font12BlueRegular,
              ),
            ),
      ],
    );
  }
}
