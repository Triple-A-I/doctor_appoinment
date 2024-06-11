import '../../data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doctors_speciality_listview_item.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationsData;
  const DoctorsSpecialityListView(
      {super.key, required this.specializationsData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: specializationsData.length,
          itemBuilder: (context, index) => DoctorsSpecialityListviewItem(
                itemIndex: index,
                specializationsData: specializationsData[index],
              )),
    );
  }
}
