import '../../../../core/theme/colors.dart';
import '../../../../core/theme/images_manager.dart';
import '../../../../core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Albraa!",
              style: TextStyles.font18DarkBlueBold,
            ),
            Text(
              "How are you today?",
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset(
              ImagesManager.logo), //todo: this will be notifications
        )
      ],
    );
  }
}
