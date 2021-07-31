import 'package:flutter/material.dart';

import '../widget/deli_text_field.dart';
import '../widget/logo_withtext.dart';
import '../widget/navigator_text_back_button.dart';
import '../widget/angle_backgorund.dart';

class CodeVerificationScreen extends StatelessWidget {
  static String routerName = "/code_verification";
  const CodeVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: NavigatorTextBackButton(),
      ),
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: SingleChildScrollView(
          child: Container(
            height: 800,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    child: CustomPaint(
                      painter: AngleBackgorund(),
                      size: Size(MediaQuery.of(context).size.width, 220),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LogoWithText(),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        "CONFIRM CODE",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Enter your code given in the email we just sent you so that we can verify your account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DeliTextFiled(
                        hintLabel: "Code",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
