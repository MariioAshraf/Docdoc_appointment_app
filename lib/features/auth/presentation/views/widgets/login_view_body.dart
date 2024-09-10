import 'package:doctor_appointment_app/core/helpers/spacing.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:doctor_appointment_app/features/auth/presentation/managers/login_cubit/login_cubit.dart';
import 'package:doctor_appointment_app/features/auth/presentation/views/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../data/models/login_models/login_request_model/login_request_model.dart';
import 'already_have_account_text.dart';
import 'login_bloc_listener.dart';
import 'login_form.dart';
import 'terms_and_conditions_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var loginCubit = LoginCubit.get(context);
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
            verticalSpacing(22),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyles.font13BlueRegular,
              ),
            ),
            verticalSpacing(22),
            const LoginBlocListener(),
            AppTextButton(
              onPressed: () async {
                if (loginCubit.formKey.currentState!.validate()) {
                  await loginCubit.login(LoginRequestBody(
                      email: loginCubit.emailController.text,
                      password: loginCubit.passwordController.text));
                }
              },
              textTitle: 'Login',
              textStyle: TextStyles.font16WhiteSemiBold,
            ),
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
