import 'package:flutter/material.dart';
import 'package:fruits_app/Core/Constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: GoogleFonts.cairo(
                    color: kMGrey,
                  ),
                ),
                TextSpan(
                  text: 'الشروط والأحكام',
                  style: GoogleFonts.cairo(
                    color: kRed,
                  ),
                ),
                const TextSpan(
                  text: ' ',
                ),
                TextSpan(
                  text: 'الخاصة',
                  style: GoogleFonts.cairo(
                    color: kMGrey,
                  ),
                ),
                const TextSpan(
                  text: ' ',
                ),
                TextSpan(
                  text: 'بنا',
                  style: GoogleFonts.cairo(color: kMGrey),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
