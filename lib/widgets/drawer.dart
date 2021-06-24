import 'package:flutter/material.dart';
import 'package:web_ui/helpers/style.dart';

class MobileMenu extends StatelessWidget {
  const MobileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: active,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Pricing',
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
                Padding(padding: const EdgeInsets.only(top: 5.0, bottom: 5.0)),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'CopyRight © June 2021 | Adeel Zahid',
                      style: TextStyle(color: Colors.white, fontSize: 14.0),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
