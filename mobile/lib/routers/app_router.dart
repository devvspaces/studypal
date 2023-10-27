import 'package:flutter/material.dart';
import 'package:mobile/screens/authentication/onboarding_screen.dart';
import 'package:mobile/screens/authentication/reset_screen.dart';
import 'package:mobile/screens/authentication/sign_in_screen.dart';
import 'package:mobile/screens/authentication/sign_up_screen.dart';
import 'package:mobile/screens/authentication/splash_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routePath:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
          settings: const RouteSettings(name: SplashScreen.routePath),
        );
         case OnboardingScreen.routePath:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
          settings: const RouteSettings(name: OnboardingScreen.routePath),
        );
         case ResetScreen.routePath:
        return MaterialPageRoute(
          builder: (context) => const ResetScreen(),
          settings: const RouteSettings(name: ResetScreen.routePath),
        );
         case SignInScreen.routePath:
        return MaterialPageRoute(
          builder: (context) => const SignInScreen(),
          settings: const RouteSettings(name: SignInScreen.routePath),
        );
         case SignUpScreen.routePath:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
          settings: const RouteSettings(name: SignUpScreen.routePath),
        );
         default:
        throw Exception('Route not found');
    }
  }
}
