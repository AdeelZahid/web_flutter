import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget desktopScreen;
  final Widget? tabletScreen;
  final Widget mobileScreen;

  const ResponsiveWidget(
      {Key? key,
      required this.desktopScreen,
      this.tabletScreen,
      required this.mobileScreen})
      : super(key: key);

  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 852;
  }

  static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 852 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  static bool isDesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return desktopScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 852) {
          return tabletScreen ?? desktopScreen;
        } else {
          return mobileScreen;
        }
      },
    );
  }
}
