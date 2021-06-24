import 'package:flutter/material.dart';
import 'package:web_ui/helpers/responsive.dart';
import 'package:web_ui/helpers/style.dart';
import 'package:web_ui/pages/home/mobileScreen.dart';
import 'package:web_ui/pages/home/widgets/desktopScreen.dart';
import 'package:web_ui/widgets/drawer.dart';
import 'package:web_ui/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: NavBar(),
      ),
      drawer: MobileMenu(),
      backgroundColor: bgColor,
      body: ResponsiveWidget(
        desktopScreen: DesktopScreen(),
        mobileScreen: MobileScreen(),
      ),
    );
  }
}
