import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
