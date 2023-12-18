import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_advenced_cours_app/core/app_colors.dart';
import 'package:flutter_advenced_cours_app/core/consts.dart';
import 'package:flutter_advenced_cours_app/core/styles.dart';
import 'package:flutter_advenced_cours_app/features/onboarding/widgets/btn_get_started.dart';
import 'package:flutter_advenced_cours_app/features/onboarding/widgets/doctor_and_logo.dart';
import 'package:flutter_advenced_cours_app/features/onboarding/widgets/logo_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 30.h),
      child: Column(
        children: [
          LogoWithText(),
          SizedBox(
            height: 10.h,
          ),
          DoctorAndLogo(),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
            style: Styles.font19black400Weight,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 18.h,
          ),
          BtnGetStarted()
        ],
      ),
    )));
  }
}
