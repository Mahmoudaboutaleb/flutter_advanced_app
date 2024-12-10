import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svg/docdoc_logo.svg"),
        SizedBox(width: 6), 
        Text(
          'Docdoc',
          style:TextStyles.font24Black700Bold,
        ),
      ],
    );
  }
}