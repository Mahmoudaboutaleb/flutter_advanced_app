import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_advanced_app/features/login/ui/widgets/doc_image_and_text.dart';
import 'package:flutter_advanced_app/features/login/ui/widgets/doc_logo_and_name.dart';
import 'package:flutter_advanced_app/features/login/ui/widgets/get_startted_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.0.h,
          ),child: 
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(height: 30.h),
                DocImageAndText(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text("Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      textAlign: TextAlign.center,
                      style: TextStyles.font11Grey500,),
                      SizedBox(height: 30.h),
                      GetStarttedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),),
          
        ),
      ),
    );
  }
}