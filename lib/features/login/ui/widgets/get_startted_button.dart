import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/helpers/extensions.dart';
import 'package:flutter_advanced_app/core/routing/routes.dart';
import 'package:flutter_advanced_app/core/themes/colors.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';

class GetStarttedButton extends StatelessWidget {
  const GetStarttedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ButtonStyle(
        
        backgroundColor:
        WidgetStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStatePropertyAll(
          Size(double.infinity, 52)
        ),
        shape: 
        WidgetStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      foregroundColor: WidgetStatePropertyAll(
        Colors.white,
      )
      ),
      onPressed: (){
        context.pushNamed(Routes.loginScreen);
      }, 
      child: Text("Get Started",style: TextStyles.font16Whitew500));
  }
}