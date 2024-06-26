import 'package:flutter/material.dart';

import '../../../../core/theme/styles.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctors Speciality",
          style: TextStyles.font18DarkBlueBold,
        ),
        const Spacer(),
        Text(
          "See All",
          style: TextStyles.font12BlueRegular,
        )
      ],
    );
  }
}
