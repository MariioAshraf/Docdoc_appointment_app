import 'package:doctor_appointment_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theming/app_colors.dart';
class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         const CircleAvatar(
          radius: 40,
          backgroundColor: AppColorsManager.lightGrey,
          backgroundImage: AssetImage('assets/images/doc_icon.webp'),
        ),
        verticalSpacing(10),
        const Text('Cardio')
      ],
    );
  }
}
