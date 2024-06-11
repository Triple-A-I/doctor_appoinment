import '../../data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/images_manager.dart';
import '../../../../core/theme/styles.dart';

class DoctorsSpecialityListviewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  const DoctorsSpecialityListviewItem(
      {super.key, required this.specializationsData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
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
            specializationsData?.name ?? "Specilization",
            style: TextStyles.font13DarkBlueRegular,
          )
        ],
      ),
    );
  }
}
