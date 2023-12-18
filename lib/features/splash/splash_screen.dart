import 'package:flutter_advenced_cours_app/core/routing/routes.dart';

import '../../core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_advenced_cours_app/core/consts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/styles.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  lunchOnBoardingScreen(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 4)).then((value) {
      context.pushReplacementNamed(Routes.onBoardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    lunchOnBoardingScreen(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  Colors.white.withOpacity(0.7),
                  Colors.white.withOpacity(0.7),
                  Colors.white.withOpacity(0.7)
                ])),
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/logo.png',
                    ),
                    fit: BoxFit.contain)),
          ),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.network(
                smallLogoUrl,
                width: 80,
                height: 80,
              ),
              SizedBox(
                width: 10.h,
              ),
              Text("Doctor", style: Styles.font35Blac700Weight)
            ],
          )),
        ],
      ),
    );
  }
}
