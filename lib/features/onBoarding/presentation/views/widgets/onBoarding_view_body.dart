import 'package:doctor_appointment_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doc_image_and_text.dart';
import 'doc_logo_and_name.dart';
import 'get_started_button.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(bottom: 30.h, top: 30.h),
        child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(
              height: 7.h,
            ),
            const DocImageAndText(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              child: Column(
                children: [
                  Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: AppTextStyles.font13GreyRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const GetStartedButton(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
