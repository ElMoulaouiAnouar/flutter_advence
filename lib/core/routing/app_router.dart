import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advenced_cours_app/core/routing/routes.dart';
import 'package:flutter_advenced_cours_app/features/auth/views/login_screen.dart';
import 'package:flutter_advenced_cours_app/features/onboarding/onboarding_screen.dart';

class AppRouter {
  static Route generateRouter(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text("Route dosn't found"),
                  ),
                ));
    }
  }
}
