import 'package:flutter/material.dart';
import 'package:web_ui/helpers/responsive.dart';
import 'package:web_ui/helpers/style.dart';
import 'package:web_ui/pages/home/mobileScreen.dart';
import 'package:web_ui/pages/home/widgets/desktopScreen.dart';
import 'package:web_ui/widgets/drawer.dart';
import 'package:web_ui/widgets/mobile_navbar.dart';
import 'package:web_ui/widgets/navbar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,

      appBar: PreferredSize(
        preferredSize: Size(
          screenSize.width,
          1000,
        ),
        child: NavBar(),
        // child: mobileTopBar(scaffoldKey),
      ),

      //  appBar: ResponsiveWidget.isDesktopScreen(context) ?
      //   mobileTopBar(scaffoldKey) :
      //    PreferredSize(preferredSize: Size(screenSize.width, 1000),
      //   child: NavBar(),),

      drawer: MobileMenu(),
      backgroundColor: bgColor,
      body: ResponsiveWidget(
        desktopScreen: DesktopScreen(),
        mobileScreen: MobileScreen(),
      ),
    );
  }
}
