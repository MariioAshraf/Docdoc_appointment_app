import 'package:doctor_appointment_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles{
  static  TextStyle font24Black700Weight =  TextStyle(
     fontSize: 27.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black
  );

  static  TextStyle font23BlueBold =  TextStyle(
     fontSize: 32.sp,
    fontWeight: FontWeight.bold,
    color: ColorsManager.mainBlue
  );
  static  TextStyle font15GreyRegular =  TextStyle(
     fontSize: 13.sp,
    fontWeight: FontWeight.normal,
    color: ColorsManager.grey
  );

}