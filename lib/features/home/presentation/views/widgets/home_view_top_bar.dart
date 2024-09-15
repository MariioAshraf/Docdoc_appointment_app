import 'package:doctor_appointment_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomeViewTopBar extends StatelessWidget {
  const HomeViewTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Mario',style: AppTextStyles.font18DarkBlueBold,),
            Text('How Are you Today?',style: AppTextStyles.font11MoreGreyRegular,),
          ],
        ),
         const Spacer(),
         SvgPicture.asset('assets/svgs/home_notification.svg'),
      ],
    );
  }
}
