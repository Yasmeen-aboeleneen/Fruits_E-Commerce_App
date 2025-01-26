import 'package:flutter/material.dart';
import 'package:fruits_app/Views/Auth/Presentation/login_screen.dart';
import 'package:fruits_app/Views/Auth/Presentation/signup_screen.dart';
import 'package:fruits_app/Views/On_Boarding/Presentation/onboarding_screen.dart';
import 'package:fruits_app/Views/Splash/Presentation/splash_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case OnboardingScreen.onBoardingRoute:
      return MaterialPageRoute(builder: (context) => const OnboardingScreen());
    case LoginScreen.loginRoute:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case SignupScreen.signUPRoute:
      return MaterialPageRoute(builder: (context) => const SignupScreen());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
