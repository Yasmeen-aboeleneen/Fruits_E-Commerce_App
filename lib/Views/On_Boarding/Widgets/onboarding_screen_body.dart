import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Constants/colors.dart';
import 'package:fruits_app/Views/On_Boarding/Widgets/onboarding_page_view.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: SafeArea(child: OnboardingPageView())),
        DotsIndicator(
          dotsCount: 2,
          decorator:
              const DotsDecorator(activeColor: kPrimary, color: kPrimary2),
        )
      ],
    );
  }
}
