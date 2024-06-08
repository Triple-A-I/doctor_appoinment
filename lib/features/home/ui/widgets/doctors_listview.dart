import 'package:doctor_appoinment/core/helpers/spacing.dart';
import 'package:doctor_appoinment/core/theme/images_manager.dart';
import 'package:doctor_appoinment/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 8,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(
            bottom: 16.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  ImagesManager.homeBluePattern,
                  width: 110.w,
                  height: 120.h,
                  fit: BoxFit.cover,
                ),
              ),
              horizontalSpacing(16.w),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font18DarkBlueBold,
                  ),
                  Text(
                    "Degree | 00898323",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font12GrayMedium,
                  ),
                  Text(
                    "email@email.com",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font12GrayMedium,
                  ),
                ],
              ))
            ],
          ),
        );
      },
    ));
  }
}
