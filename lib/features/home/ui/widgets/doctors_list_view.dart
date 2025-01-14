import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/colors.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(bottom: 16.h),
            height: 126.h,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/Doctor 2.png",
                  width: 110.w,
                  height: 110.h,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 16.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dr. Randy Wigham",
                      style: TextStyles.font16Black700,
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Text(
                          "General",
                          style: TextStyles.font12GreyMedium,
                        ),
                        SizedBox(width: 8.w),
                        Text("|"),
                        SizedBox(width: 8.w),
                        Text(
                          "RSUD Gatot Subroto",
                          style: TextStyles.font12GreyMedium,
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: Color(0xffFFD600),
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          "4.8",
                          style: TextStyles.font12GreyMedium.copyWith(
                            color: ColorsManager.darkGreyText,
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          "(4,279 reviews)",
                          style: TextStyles.font12GreyMedium.copyWith(
                            color: ColorsManager.darkGreyText,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
