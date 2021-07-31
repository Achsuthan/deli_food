import 'package:flutter/material.dart';

import '../widget/navigator_text_back_button.dart';
import '../data/enum/landing_button.dart';
import '../widget/deli_border_button.dart';
import '../widget/deli_text_field.dart';
import '../widget/logo_withtext.dart';
import '../widget/angle_backgorund.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routerName = "/Forgot_password";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        leading: NavigatorTextBackButton(),
      ),
      backgroundColor: Colors.red,
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
                          "FORGOT PASSWORD?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Whoops! Enter your email address below and we will send you an right now to help you reset",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        DeliTextFiled(
                          hintLabel: "Email",
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: DeliBorderButton(
                            buttonType: LandingButtonType.FORGOTCODEREQUEST,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
