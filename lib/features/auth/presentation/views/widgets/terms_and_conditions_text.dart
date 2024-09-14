import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By logging, you agree to our',
              style: TextStyles.font13GreyRegular,
            ),
            TextSpan(
              text: ' Terms & Conditions',
              style: TextStyles.font14DarkBlueMedium,
            ),
            TextSpan(
              text: ' and ',
              style: TextStyles.font13GreyRegular.copyWith(height: 1.5),
            ),
            TextSpan(
              text: ' Privacy Policy',
              style: TextStyles.font14DarkBlueMedium,
            ),
          ],
        ),
      ),
    );
  }
}