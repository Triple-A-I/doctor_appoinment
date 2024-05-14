import 'package:doctor_appoinment/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doctor_appoinment/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_appoinment/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctor_appoinment/core/theme/styles.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 10.h),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Circles to get a new experience. and contact with other doctors easily.',
                      style: TextStyles.font13GrayRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.h),
                    const GetStartedButton()
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
