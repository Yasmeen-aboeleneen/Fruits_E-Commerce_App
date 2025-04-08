import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Constants/colors.dart';
import 'package:fruits_app/Core/Widgets/custom_text_form_field.dart';
import 'package:fruits_app/Views/Auth/Widgets/terms_and_conditions.dart';

class SignupBodyScreen extends StatelessWidget {
  const SignupBodyScreen({super.key});

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
                hintText: 'الاسم كامل',
                icon: Icon(
                  Icons.person,
                  color: kMGrey,
                ),
                textInputType: TextInputType.text),
            SizedBox(
              height: h * .025,
            ),
            const CustomTextFormField(
                hintText: "البريد الإلكتروني",
                icon: Icon(
                  Icons.mail,
                  color: kMGrey,
                ),
                textInputType: TextInputType.emailAddress),
            SizedBox(
              height: h * .025,
            ),
            const CustomTextFormField(
                hintText: 'كلمة المرور',
                icon: Icon(
                  Icons.remove_red_eye,
                  color: kMGrey,
                ),
                textInputType: TextInputType.visiblePassword),
            SizedBox(
              height: h * .025,
            ),
            TermsAndConditions(),
          ],
        ),
      ),
    );
  }
}
