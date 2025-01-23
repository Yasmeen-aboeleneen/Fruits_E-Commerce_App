// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Constants/colors.dart';

import 'package:fruits_app/Core/Utils/app_images.dart';
import 'package:fruits_app/Views/On_Boarding/Widgets/page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
            isVisible: true,
            backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
            subTitle:
                'اكتشف تجربة تسوق فريدة معFruits Hub ، استكشف مجموعتنا الواسعة من الفواكه الطازجة و احصل علي افضل العروض.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'مرحبا بك في',
                  style: TextStyle(
                      color: kBlack,
                      fontSize: w * .056,
                      fontWeight: FontWeight.bold),
                ),
                Text('HUB',
                    style: TextStyle(
                        color: kwarm,
                        fontSize: w * .056,
                        fontWeight: FontWeight.bold)),
                Text(
                  'Fruit',
                  style: TextStyle(
                      color: kPrimary,
                      fontSize: w * .058,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            image: Assets.imagesPageViewItem1Image),
        PageViewItem(
            isVisible: false,
            backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
            subTitle:
                'نقدم لك افضل الفواكه المختارة بعناية، اطلع علي التفاصيل و الصور و التقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ابحث و تسوق",
                    style: TextStyle(
                        color: kBlack,
                        fontSize: w * .056,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            image: Assets.imagesPageViewItem2Image),
      ],
    );
  }
}
