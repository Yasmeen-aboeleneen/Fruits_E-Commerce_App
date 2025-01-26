// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/Core/Constants/constants.dart';
import 'package:fruits_app/Core/Services/shared_pref_singleton.dart';
import 'package:fruits_app/Core/Utils/app_images.dart';
import 'package:fruits_app/Views/Auth/Presentation/login_screen.dart';
import 'package:fruits_app/Views/On_Boarding/Presentation/onboarding_screen.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNavigation() async {
    bool isOnBoardingScreenSeen =
        SharedPreferencesSingleton.getBoo(kIsOnBoardingScreenSeen);
    await Future.delayed(const Duration(seconds: 3));
    if (isOnBoardingScreenSeen) {
      Navigator.pushReplacementNamed(context, LoginScreen.loginRoute);
    } else {
      Navigator.pushReplacementNamed(context, OnboardingScreen.onBoardingRoute);
    }
  }
}
