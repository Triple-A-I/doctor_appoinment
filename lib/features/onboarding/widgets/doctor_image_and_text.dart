import 'package:doctor_appoinment/core/theme/images_manager.dart';
import 'package:doctor_appoinment/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          ImagesManager.onboardingBackground,
          height: 400.h,
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [.14, .5],
            ),
          ),
          child: Image.asset(
            ImagesManager.onboardingDoctor,
            height: 580.h,
          ),
        ),
        Positioned(
          bottom: 20.h,
          left: 0,
          right: 0,
          child: Text(
            textAlign: TextAlign.center,
            "Best Doctor\n Social media App",
            style: TextStyles.font32BlueBold.copyWith(),
          ),
        )
      ],
    );
  }
}
