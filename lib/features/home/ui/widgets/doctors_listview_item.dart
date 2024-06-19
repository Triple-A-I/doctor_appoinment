import '../../data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/images_manager.dart';
import '../../../../core/theme/styles.dart';

class DoctorsListviewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListviewItem({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
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
                doctorsModel?.name ?? "Name",
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font18DarkBlueBold,
              ),
              Text(
                "${doctorsModel?.degree} | ${doctorsModel?.phone}",
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font12GrayMedium,
              ),
              Text(
                doctorsModel?.email ?? "Email",
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font12GrayMedium,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
