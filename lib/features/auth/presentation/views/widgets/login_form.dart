import 'package:doctor_appointment_app/core/helpers/app_regex.dart';
import 'package:doctor_appointment_app/core/helpers/spacing.dart';
import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:doctor_appointment_app/core/widgets/app_text_form_field.dart';
import 'package:doctor_appointment_app/features/auth/presentation/views/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../managers/login_cubit/login_cubit.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscureText = true;

  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    setUpPasswordController();
    super.initState();
  }

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasMinLength = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;

  void setUpPasswordController() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var loginCubit = LoginCubit.get(context);
    return Form(
      key: loginCubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'please enter a valid email';
              }
            },
            controller: loginCubit.emailController,
            hintText: 'Email',
          ),
          verticalSpacing(10),
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty
                  // ||!AppRegex.isPasswordValid(value)
                  ) {
                return 'please enter a valid password';
              }
            },
            controller: passwordController,
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
              ),
            ),
            hintText: 'Password',
          ),
          verticalSpacing(20),
          PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacter: hasSpecialCharacter,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
