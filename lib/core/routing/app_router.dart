import 'package:doctor_appointment_app/core/routing/routes.dart';
import 'package:doctor_appointment_app/features/auth/presentation/views/login_view.dart';
import 'package:doctor_appointment_app/features/onBoarding/presentation/views/onBoarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );
      case Routes.loginView: // here
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case Routes.homeView: // and here
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route found for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
