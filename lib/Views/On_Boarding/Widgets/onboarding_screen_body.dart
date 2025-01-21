import 'package:flutter/material.dart';
import 'package:fruits_app/Views/On_Boarding/Widgets/onboarding_page_view.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Expanded(child: SafeArea(child: OnboardingPageView()))],
    );
  }
}
