import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:doctor_appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.hintStyle,
    this.inputTextStyle,
    this.suffixIcon,
    this.obscureText,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.backGroundColor,
    this.courserColor,
  });

  final String hintText;
  final TextStyle? hintStyle;
  final Color? backGroundColor;
  final Color? courserColor;
  final TextStyle? inputTextStyle;
  final Widget? suffixIcon;
  final bool? obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorOpacityAnimates: true,
      cursorColor: courserColor ?? ColorsManager.mainBlue,
      obscureText: obscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
      decoration: InputDecoration(
        filled: true,
        fillColor: backGroundColor ?? ColorsManager.moreLighterGrey,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 18.h,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.mainBlue,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsManager.lighterGrey,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16)),
        hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
