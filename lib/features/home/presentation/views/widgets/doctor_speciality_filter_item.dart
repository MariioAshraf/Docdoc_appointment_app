import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_styles.dart';
class DoctorSpecialityFilterItem extends StatelessWidget {
  const DoctorSpecialityFilterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            'assets/images/home_doc_container.webp',
            width: 120.w,
            height: 150.h,
            fit: BoxFit.fill,
          ),
        ),
        horizontalSpacing(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mario',
                style: AppTextStyles.font18DarkBlueBold,
              ),
              verticalSpacing(3),
              Text(
                'Degree | 011111111',
                style: AppTextStyles.font13GreyRegular,
              ),
              verticalSpacing(5),
              Text(
                'mariioashraf@gmail.com',
                style: AppTextStyles.font14GreyRegular,
              ),
            ],
          ),
        )
      ],
    );
  }
}
