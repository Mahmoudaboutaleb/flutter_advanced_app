import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Omar!",
              style: TextStyles.font18DarkBold,
            ),
            Text(
              "How Are you Today?",
              style: TextStyles.font11DarkGreyMedieum,
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(12),
          height: 48.h,
          width: 48.w,
          decoration: BoxDecoration(
            color: Color(0xffF5F5F5),
            shape: BoxShape.circle,
          ),
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/svg/Alert.svg",
              ),
              Positioned(
                top: 0,
                right: 2,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            height: 170.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/home_blue_background.png",
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and \nschedule with \nnearest doctor",
                  style: TextStyles.font18WhiteMedium.copyWith(height: 1.5),
                ),
                SizedBox(height: 15.h),
                Expanded(
                  child: SizedBox(
                    width: 109.w,
                    height: 38.h,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 18.w, vertical: 10.h),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(48),
                            )),
                        child: Text(
                          "Find Nearby",
                          style: TextStyles.font12BlueMedium,
                        )),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              right: 15,
              child: Image.asset(
                "assets/svg/doctor_woman.png",
                width: 136.w,
                height: 195.h,
              )),
        ],
      ),
    );
  }
}
