import 'package:flutter/material.dart';

import '../data/enum/landing_button.dart';
import '../widget/deli_underline_button.dart';
import '../widget/login_button.dart';
import '../widget/logo_withtext.dart';

class LandingScreen extends StatelessWidget {
  static String routerName = "/";
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                LogoWithText(),
                SizedBox(
                  height: 60,
                ),
                LoginBUtton(
                  buttonType: LandingButtonType.FACEBOOK,
                ),
                SizedBox(
                  height: 20,
                ),
                LoginBUtton(
                  buttonType: LandingButtonType.GOOGLE,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                LoginBUtton(
                  buttonType: LandingButtonType.DELIFOOD,
                ),
                SizedBox(
                  height: 40,
                ),
                DeliUnderlineButton(buttonType: LandingButtonType.REGISTER),
                DeliUnderlineButton(buttonType: LandingButtonType.GUEST),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
