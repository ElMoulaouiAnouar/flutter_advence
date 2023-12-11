import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advenced_cours_app/core/routing/app_router.dart';
import 'package:flutter_advenced_cours_app/core/routing/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/helpers/extensions.dart';

class DoctorApp extends StatelessWidget {
  const DoctorApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Navigator.pushNamed(context, Routes.loginScreen);

    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) => AppRouter.generateRouter(settings),
          initialRoute: Routes.onBoardingScreen,
        );
      },
    );
  }
}
