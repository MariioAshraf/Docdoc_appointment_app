import 'package:doctor_appointment_app/core/helpers/spacing.dart';
import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:doctor_appointment_app/core/widgets/app_text_button.dart';
import 'package:doctor_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const AppTextFormField(
          hintText: 'Email',
        ),
        verticalSpacing(10),
        AppTextFormField(
          obscureText: isObscureText,
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              icon: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                color: ColorsManager.darkBlue,
              )),
          hintText: 'Password',
        ),
        verticalSpacing(24),
        Text(
          'Forgot Password?',
          style: TextStyles.font13BlueRegular,
        ),
        verticalSpacing(30),
        AppTextButton(
          textTitle: 'Login',
          textStyle: TextStyles.font16WhiteSemiBold,
        ),
      ],
    );
  }
}
