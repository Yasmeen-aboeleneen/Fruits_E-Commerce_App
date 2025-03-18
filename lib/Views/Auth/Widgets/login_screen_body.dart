import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Constants/colors.dart';
import 'package:fruits_app/Core/Widgets/custom_buttons.dart';
import 'package:fruits_app/Core/Widgets/custom_text_form_field.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
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
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'لا تمتلك حساب',
                  style: GoogleFonts.cairo(
                      color: kMGrey,
                      fontWeight: FontWeight.w700,
                      fontSize: w * .048)),
              TextSpan(
                  text: " ؟",
                  style: GoogleFonts.cairo(
                      color: kMGrey,
                      fontWeight: FontWeight.w600,
                      fontSize: w * .045)),
              TextSpan(
                  text: 'قم بإنشاء حساب',
                  style: GoogleFonts.cairo(
                      color: kPrimary,
                      fontWeight: FontWeight.w700,
                      fontSize: w * .048))
            ]))
          ],
        ),
      ),
    );
  }
}
