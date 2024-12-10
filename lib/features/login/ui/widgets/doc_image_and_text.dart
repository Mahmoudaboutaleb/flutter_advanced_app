import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_svg/svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset("assets/svg/docdoc_logo_low_oppacity.svg")),
      Container(
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.white.withOpacity(0.0),
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter,stops: [0.14,0.4]),
            
        ),
        child: Image.asset("assets/images/onboarding_image.png"),
      ),
      Positioned(
        bottom: 30,
        right: 0,
        left: 0,
        child: Text(
          "Best Doctor\nAppointment App",
          textAlign: TextAlign.center,
          style: TextStyles.font32BlueBold.copyWith(
          height: 1.4
        ),)),

      ],
    );
  }
}