import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Constants/colors.dart';
import 'package:fruits_app/Core/Utils/app_images.dart';
import 'package:fruits_app/Core/Widgets/custom_buttons.dart';
import 'package:fruits_app/Core/Widgets/custom_text_form_field.dart';
import 'package:fruits_app/Views/Auth/Widgets/or_divider.dart';
import 'package:fruits_app/Views/Auth/Widgets/social_button.dart';

import 'package:google_fonts/google_fonts.dart';

import 'dont_have_account.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: h * .04,
            ),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: h * .025,
            ),
            const CustomTextFormField(
              icon: Icon(
                Icons.remove_red_eye,
                color: kMGrey,
              ),
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
            ),
            SizedBox(
              height: h * .02,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                textAlign: TextAlign.left,
                'نسيت كلمة المرور؟',
                style: GoogleFonts.cairo(
                    color: kPrimary2,
                    fontSize: w * .05,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: h * .033,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: CustomButton(onpressed: () {}, text: 'تسجيل')),
            SizedBox(
              height: h * .033,
            ),
            DoNotHaveAnAccountWidget(w: w),
            SizedBox(
              height: h * .033,
            ),
            const OrDivider(),
            SizedBox(
              height: h * .016,
            ),
            SocialButton(
              onpressed: () {},
              title: 'تسجيل بواسطة جوجل',
              image: Assets.imagesGoogleIcon,
            ),
            SizedBox(
              height: h * .033,
            ),
            SocialButton(
              onpressed: () {},
              title: 'تسجيل بواسطة ابل',
              image: Assets.imagesApplIcon,
            ),
            SizedBox(
              height: h * .033,
            ),
            SocialButton(
              onpressed: () {},
              title: 'تسجيل بواسطة فيسبوك',
              image: Assets.imagesFacebookIcon,
            ),
          ],
        ),
      ),
    );
  }
}
