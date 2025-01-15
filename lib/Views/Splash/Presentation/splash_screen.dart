import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Constants/colors.dart';
import 'package:fruits_app/Views/Splash/Widgets/splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const routeName = "splash";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kveryWhite,
      body: SplashScreenBody(),
    );
  }
}
