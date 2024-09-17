import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import 'doctor_speciality_filter_list_view.dart';
import 'doctor_speciality_list_view.dart';
import 'doctor_speciality_see_all.dart';
import 'home_blue_container.dart';
import 'home_view_top_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 30.h,
      ),
      child: Column(
        children: [
          const HomeViewTopBar(),
          verticalSpacing(10),
          const HomeBlueContainer(),
          verticalSpacing(20),
          const DoctorSpecialitySeeAll(),
          const DoctorSpecialityListView(),
          const DoctorSpecialityFilterListView()
        ],
      ),
    );
  }
}

