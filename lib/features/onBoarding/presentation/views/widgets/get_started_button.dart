import 'package:doctor_appointment_app/core/helpers/extensions.dart';
import 'package:doctor_appointment_app/core/routing/routes.dart';
import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: const ButtonStyle(
          shape: WidgetStatePropertyAll<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
          ),
          minimumSize: WidgetStatePropertyAll(Size(double.infinity, 52)),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          backgroundColor: WidgetStatePropertyAll(
            ColorsManager.mainBlue,
          ),
        ),
        onPressed: () {
          context.pushNamed(Routes.loginView);
        },
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteMedium,
        ));
  }
}
