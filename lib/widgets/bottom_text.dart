import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_ui/helpers/style.dart';

class BottomText extends StatelessWidget {
  final String? mainText;
  final String? secondaryText;
  const BottomText({Key? key, this.mainText, this.secondaryText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: "$mainText \n"),
          TextSpan(
            text: secondaryText,
            style: GoogleFonts.roboto(
                color: active, fontSize: 16.0, fontWeight: FontWeight.w300),
          ),
        ],
        style: GoogleFonts.roboto(
          fontSize: 58.0,
          fontWeight: FontWeight.bold,
          color: active,
        ),
      ),
    );
  }
}
