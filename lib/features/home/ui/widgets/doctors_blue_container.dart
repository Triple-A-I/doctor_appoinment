import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/images_manager.dart';
import '../../../../core/theme/styles.dart';
import 'package:flutter/material.dart';
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
            width: double.infinity,
            height: 160.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 16.h,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: const DecorationImage(
                    image: AssetImage(
                      ImagesManager.homeBluePattern,
                    ),
                    fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Book and\nschedule with\nnearest doctor",
                  style: TextStyles.font18WhiteMdeium,
                ),
                verticalSpacing(16),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(48))),
                      onPressed: () {},
                      child: Text(
                        "Find nearby",
                        style: TextStyles.font12BlueRegular,
                      )),
                )
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: 0,
            child: Image.asset(
              ImagesManager.onboardingDoctor,
              height: 200.h,
            ),
          )
        ],
      ),
    );
  }
}
