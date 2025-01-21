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
            subTitle:
                'اكتشف تجربة تسوق فريدة معFruits Hub ، استكشف مجموعتنا الواسعة من الفواكه الطازجة و احصل علي افضل العروض.',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'مرحبا بك في',
                ),
                Text('HUB'),
                Text(
                  'Fruit',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ],
            ),
            image: Assets.imagesPageViewItem1Image),
        PageViewItem(
            backgroundImage: Assets.imagesPageViewItem2BackgroundImage,
            subTitle:
                'نقدم لك افضل الفواكه المختارة بعناية، اطلع علي التفاصيل و الصور\n و التقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ابحث و تسوق",
                ),
              ],
            ),
            image: Assets.imagesPageViewItem2Image),
      ],
    );
  }
}
