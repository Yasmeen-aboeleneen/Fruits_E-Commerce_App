import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Utils/app_images.dart';
import 'package:fruits_app/Views/On_Boarding/Widgets/page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
            backgroundImage: Assets.imagesPageViewItem1BackgroundImage,
            subTitle: '',
            title: Text(
                'اكتشف تجربة تسوق فريدة معFruits Hub ، استكشف مجموعتنا الواسعة من الفواكه الطازجة و احصل علي افضل العروض.'),
            image: Assets.imagesPageViewItem1Image)
      ],
    );
  }
}
