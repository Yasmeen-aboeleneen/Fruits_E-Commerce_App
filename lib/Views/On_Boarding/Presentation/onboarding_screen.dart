import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Constants/colors.dart';
import 'package:fruits_app/Views/On_Boarding/Widgets/onboarding_screen_body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static const String onBoardingRoute = 'onboarding';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kveryWhite,
      body: OnboardingScreenBody(),
    );
  }
}
