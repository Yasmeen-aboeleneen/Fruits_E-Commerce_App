import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DoNotHaveAnAccountWidget extends StatelessWidget {
  const DoNotHaveAnAccountWidget({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
          text: 'لا تمتلك حساب',
          style: GoogleFonts.cairo(
              color: kMGrey, fontWeight: FontWeight.w700, fontSize: w * .048)),
      TextSpan(
          text: " ؟",
          style: GoogleFonts.cairo(
              color: kMGrey, fontWeight: FontWeight.w600, fontSize: w * .045)),
      TextSpan(
          text: 'قم بإنشاء حساب',
          style: GoogleFonts.cairo(
              color: kPrimary, fontWeight: FontWeight.w700, fontSize: w * .048))
    ]));
  }
}
