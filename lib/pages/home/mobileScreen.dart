import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_ui/helpers/style.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 450,
              constraints: BoxConstraints(maxWidth: 450),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Get noticed for'),
                    TextSpan(
                        text: "who", style: GoogleFonts.roboto(color: active)),
                    TextSpan(
                      text: " you are, ",
                    ),
                    TextSpan(
                        text: 'not what',
                        style: GoogleFonts.roboto(color: active)),
                  ],
                  style: GoogleFonts.roboto(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
