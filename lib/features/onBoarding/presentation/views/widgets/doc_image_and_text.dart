import 'package:doctor_appointment_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 50,
          top: 0,
          right: 30,
          left: 0,
          child: SvgPicture.asset(
            'assets/svgs/logo_low_opacity.svg',
          ),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              colors: [Colors.white, Colors.white.withOpacity(0)],
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(
            'assets/images/onBoarding_doctor.png',
          ),
        ),
        Positioned(
          bottom: 20,
          right: 0,
          left: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: AppTextStyles.font32BlueBold,
          ),
        )
      ],
    );
  }
}