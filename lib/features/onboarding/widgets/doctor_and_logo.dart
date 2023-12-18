import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/consts.dart';

import '../../../core/styles.dart';

class DoctorAndLogo extends StatelessWidget {
  const DoctorAndLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [
                0.2,
                0.2
              ],
                  colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.5)
              ])),
          width: double.infinity,
          height: 480,
          child: Image.asset('assets/images/doctor_logo.png'),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 2,
          child: Column(
            children: [
              Text(
                "Best Doctor",
                style: Styles.font30Blue700Weight,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                "Appoitement App",
                style: Styles.font30Blue700Weight,
              )
            ],
          ),
        ),
      ],
    );
  }
}
