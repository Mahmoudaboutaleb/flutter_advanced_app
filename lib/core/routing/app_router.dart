import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/di/dependency_injection.dart';
import 'package:flutter_advanced_app/core/routing/routes.dart';
import 'package:flutter_advanced_app/features/home/ui/home_screen.dart';
import 'package:flutter_advanced_app/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_advanced_app/features/login/ui/login_screen.dart';
import 'package:flutter_advanced_app/features/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScren:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: LoginScreen()));
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text('Page not found${settings.name}'),
                  ),
                ));
    }
  }
}
