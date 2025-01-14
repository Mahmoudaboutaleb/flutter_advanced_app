import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
              style: TextStyles.font11DarkGreyReqular,
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
