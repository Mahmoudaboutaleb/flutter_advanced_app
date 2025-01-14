import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> doctorSpeciallityImage = [
      "assets/images/doctor_speciality/spaeciallity_doctor1.png",
      "assets/images/doctor_speciality/spaeciallity_doctor2.png",
      "assets/images/doctor_speciality/spaeciallity_doctor3.png",
      "assets/images/doctor_speciality/spaeciallity_doctor4.png",
      "assets/images/doctor_speciality/spaeciallity_doctor1.png",
      "assets/images/doctor_speciality/spaeciallity_doctor2.png",
      "assets/images/doctor_speciality/spaeciallity_doctor3.png",
      "assets/images/doctor_speciality/spaeciallity_doctor4.png",
    ];
    List<String> doctorSpeciallityName = [
      "General",
      "Neurologic",
      "Pediatric",
      "Radiology",
      "General",
      "Neurologic",
      "Pediatric",
      "Radiology",
    ];
    return SizedBox(
      height: 90.h,
      width: 343.w,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: doctorSpeciallityImage.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsetsDirectional.only(
              start: index == 0 ? 12 : 25.w,
            ),
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  width: 58.w,
                  height: 58.h,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F8FF),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Center(
                    child: Image.asset(doctorSpeciallityImage[index]),
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  doctorSpeciallityName[index],
                  style: TextStyles.font12BlackReqular,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
