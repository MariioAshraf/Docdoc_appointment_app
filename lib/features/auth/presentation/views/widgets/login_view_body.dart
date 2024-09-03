import 'package:doctor_appointment_app/core/helpers/spacing.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'already_have_account_text.dart';
import 'login_form.dart';
import 'terms_and_conditions_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.font24BlueBold,
            ),
            verticalSpacing(8),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GreyRegular,
            ),
            verticalSpacing(30),
            const LoginForm(),
            verticalSpacing(40),
            const TermsAndConditionsText(),
            verticalSpacing(50),
            const AlreadyHaveAnAccountAndSignUpText(),
          ],
        ),
      ),
    );
  }
}
