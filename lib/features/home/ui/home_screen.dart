import 'package:doctor_appoinment/features/home/ui/widgets/doctors_listview.dart';
import 'package:doctor_appoinment/features/home/ui/widgets/doctors_speciality_listview.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/doctors_speciality_see_all.dart';
import 'package:flutter/material.dart';

import 'widgets/doctors_blue_container.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpacing(24),
              const DoctorsSpecialitySeeAll(),
              const DoctorsSpecialityListView(),
              const DoctorsListView(),
            ],
          ),
        )));
  }
}
