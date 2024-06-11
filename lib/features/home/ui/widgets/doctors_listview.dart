import '../../data/models/specializations_response_model.dart';
import 'doctors_listview_item.dart';

import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorsModel;
  const DoctorsListView({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: doctorsModel?.length,
      itemBuilder: (context, index) {
        return DoctorsListviewItem(doctorsModel: doctorsModel?[index]);
      },
    ));
  }
}
