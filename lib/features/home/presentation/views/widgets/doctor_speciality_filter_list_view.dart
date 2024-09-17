import 'package:flutter/material.dart';
import 'doctor_speciality_filter_item.dart';

class DoctorSpecialityFilterListView extends StatelessWidget {
  const DoctorSpecialityFilterListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: index == 0 ? 0 : 10),
          child: const DoctorSpecialityFilterItem(),
        );
      },
    ));
  }
}
