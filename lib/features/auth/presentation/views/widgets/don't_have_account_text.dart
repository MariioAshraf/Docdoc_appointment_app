import 'package:doctor_appointment_app/core/helpers/extensions.dart';
import 'package:doctor_appointment_app/core/routing/routes.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoNotHaveAnAccountAndSignUpText extends StatelessWidget {
  const DoNotHaveAnAccountAndSignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an account yet? ',
              style: TextStyles.font14DarkBlueMedium.copyWith(fontSize: 13.sp),
            ),
            TextSpan(
              text: ' Sign Up',
              style: TextStyles.font13BlueRegular,
              recognizer: TapGestureRecognizer()..onTap = (){
                context.pushReplacementNamed(Routes.signUpView);
              }
            ),
          ],
        ),
      ),
    );
  }
}
