import 'package:flutter/material.dart';

import '../../../../../core/theming/app_styles.dart';
class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctors Speciality',style: AppTextStyles.font18DarkBlueBold,),
        const Spacer(),
        Text('See All ',style: AppTextStyles.font13BlueRegular,)
      ],
    );
  }
}
