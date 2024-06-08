import '../../../core/theme/images_manager.dart';
import '../../../core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          ImagesManager.logo,
          fit: BoxFit.cover,
          height: 25.h,
          width: 25.w,
        ),
        SizedBox(width: 10.w),
        Text("Circles", style: TextStyles.font20BlackBold)
      ],
    );
  }
}
