import 'package:doctor_appointment_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      this.onPressed,
      this.borderRadius,
      required this.textTitle,
      this.textStyle,
      this.buttonWidth,
      this.buttonHeight,
      this.horizontalPadding,
      this.verticalPadding,
      this.backGroundColor});

  final BorderRadiusGeometry? borderRadius;
  final VoidCallback? onPressed;
  final String textTitle;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? horizontalPadding;
  final double? verticalPadding;
  final TextStyle? textStyle;
  final Color? backGroundColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(
            buttonWidth?.w ?? double.maxFinite,
            buttonHeight ?? 50.h,
          ),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding?.w ?? 12.w,
            vertical: verticalPadding?.h ?? 14.h,
          ),
        ),
        backgroundColor: WidgetStateProperty.all(
          backGroundColor ?? AppColorsManager.mainBlue,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        textTitle,
        style: textStyle,
      ),
    );
  }
}
