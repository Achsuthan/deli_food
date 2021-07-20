import 'package:deli_food/data/enum/landing_button.dart';
import 'package:deli_food/widget/deli_underline_button.dart';
import 'package:deli_food/widget/login_button.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
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
                Container(
                  padding: EdgeInsets.only(
                    top: 140,
                  ),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/logo_white.jpg",
                    height: 140,
                    width: 140,
                  ),
                ),
                Text(
                  "DELI Food",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
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
