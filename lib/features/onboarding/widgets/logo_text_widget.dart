import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_advenced_cours_app/core/app_colors.dart';
import 'package:flutter_advenced_cours_app/core/consts.dart';
import 'package:flutter_advenced_cours_app/core/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWithText extends StatelessWidget {
  const LogoWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/logo.svg'),
        SizedBox(
          width: 10.h,
        ),
        Text("Doctor", style: Styles.font24Black700Weight)
      ],
    );
  }
}
