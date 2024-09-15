import 'package:doctor_appointment_app/features/auth/presentation/managers/sign_up_cubit/sign_up_cubit.dart';
import 'package:doctor_appointment_app/features/auth/presentation/views/widgets/sign_up_bloc_listerner.dart';
import 'package:doctor_appointment_app/features/auth/presentation/views/widgets/sign_up_form.dart';
import 'package:doctor_appointment_app/features/auth/presentation/views/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import 'already_have_an_account_text.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var signUpCubit = SignUpCubit.get(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up Now',
              style: AppTextStyles.font24BlueBold,
            ),
            verticalSpacing(8),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: AppTextStyles.font14GreyRegular,
            ),
            verticalSpacing(30),
            const SignUpForm(),
            verticalSpacing(22),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: AppTextStyles.font13BlueRegular,
              ),
            ),
            verticalSpacing(22),
            const SignUpBlocListener(),
            AppTextButton(
              onPressed: () async {
                if (signUpCubit.formKey.currentState!.validate()) {
                  await signUpCubit.signUp();
                }
              },
              textTitle: 'Sign Up',
              textStyle: AppTextStyles.font16WhiteSemiBold,
            ),
            verticalSpacing(40),
            const TermsAndConditionsText(),
            verticalSpacing(50),
            const AlreadyHaveAnAccountAndSignInText(),
          ],
        ),
      ),
    );
  }
}
