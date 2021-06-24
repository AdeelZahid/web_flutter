import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_ui/constants/content.dart';
import 'package:web_ui/helpers/responsive.dart';
import 'package:web_ui/helpers/style.dart';
import 'package:web_ui/widgets/bottom_text.dart';
import 'package:web_ui/widgets/customButton.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxWidth: 1440.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            width: screenSize.width / 2,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 15.0),
                    child: Text(
                      "Because you deserve better",
                      style: GoogleFonts.roboto(
                        color: active,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Get noticed for "),
                        TextSpan(
                            text: "who",
                            style: GoogleFonts.roboto(color: active)),
                        TextSpan(text: " you are "),
                        TextSpan(
                            text: "not what",
                            style: GoogleFonts.roboto(color: active)),
                        TextSpan(text: " you look like."),
                      ],
                      style: GoogleFonts.roboto(
                          fontSize: ResponsiveWidget.isTabletScreen(context)
                              ? 38
                              : 58,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Visibility(
                    child: Text(
                      mainParagraph,
                      style: GoogleFonts.roboto(
                          fontSize: 20, letterSpacing: 1.5, height: 1.5),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.0),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 80.0,
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 40))
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: screenSize.width / 4,
                          padding: EdgeInsets.only(left: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(Icons.email_outlined),
                              hintText: 'Enter your Email',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        CustomButton(text: "Get started"),
                      ],
                    ),
                  ),
                  SizedBox(height: screenSize.height / 14.0),
                  Visibility(
                    visible: screenSize.width > 700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BottomText(
                          mainText: "15k+",
                          secondaryText: "Dates and matches\nmade everyday",
                        ),
                        BottomText(
                          mainText: "1,456",
                          secondaryText: "New members\nsignup every day",
                        ),
                        BottomText(
                          mainText: "1M+",
                          secondaryText: "Members from\naround the world",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: screenSize.width / 2,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: screenSize.width / 28),
                  Image.asset(
                    'assets/images/img.png',
                    width: screenSize.width / 1.9,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
