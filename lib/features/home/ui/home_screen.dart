import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:flutter_advanced_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:flutter_advanced_app/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter_advanced_app/features/home/ui/widgets/home_appbar.dart';
import 'package:flutter_advanced_app/core/widgets/title_and_sell_all_textbutton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeAppBar(),
              SizedBox(
                height: 2.h,
              ),
              DoctorsBlueContainer(),
              SizedBox(height: 24.h),
              TitleAndSeeAllTextButton(
                title: "Doctor Speciality",
                textButtonFunction: () {},
              ),
              SizedBox(height: 16.h),
              DoctorSpecialityListView(),
              SizedBox(height: 16.h),
              TitleAndSeeAllTextButton(
                title: "Recommendation Doctor",
                textButtonFunction: () {},
              ),
              SizedBox(height: 4.h),
              DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
