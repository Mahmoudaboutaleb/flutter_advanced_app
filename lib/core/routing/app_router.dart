import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/routing/routes.dart';
import 'package:flutter_advanced_app/features/login/ui/login_screen.dart';
import 'package:flutter_advanced_app/features/onboarding_screen/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings){
    switch (settings.name) {
      case Routes.onBoardingScren:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) => Scaffold(
          body: Center(
            child: Text('Page not found${settings.name}'),
          ),
        ));
    }
  }
}