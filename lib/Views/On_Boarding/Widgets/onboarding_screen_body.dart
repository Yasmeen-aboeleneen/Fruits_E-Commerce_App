import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Constants/colors.dart';
import 'package:fruits_app/Core/Widgets/custom_buttons.dart';
import 'package:fruits_app/Views/On_Boarding/Widgets/onboarding_page_view.dart';

class OnboardingScreenBody extends StatefulWidget {
  const OnboardingScreenBody({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: SafeArea(
                child: OnboardingPageView(
          pageController: pageController,
        ))),
        const SizedBox(
          height: 5,
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
              activeColor: kPrimary,
              color: currentPage == 0 ? kGrey : kPrimary),
        ),
        const SizedBox(
          height: 29,
        ),
        Visibility(
          maintainState: true,
          maintainAnimation: true,
          visible: currentPage == 1 ? true : false,
          maintainSize: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: CustomButton(
              onpressed: () {},
              text: 'ابدأ الآن',
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        )
      ],
    );
  }
}
