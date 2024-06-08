import 'package:doctor_appoinment/core/helpers/spacing.dart';
import 'package:doctor_appoinment/core/theme/colors.dart';
import 'package:doctor_appoinment/core/theme/images_manager.dart';
import 'package:doctor_appoinment/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
          child: Column(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: ColorsManager.lightGray,
                child: Image.asset(
                  ImagesManager.onboardingDoctor,
                  width: 40.w,
                  height: 40.h,
                ),
              ),
              verticalSpacing(8.h),
              Text(
                "Cardiologist",
                style: TextStyles.font13DarkBlueRegular,
              )
            ],
          ),
        ),
      ),
    );
  }
}
