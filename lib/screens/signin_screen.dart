import 'package:flutter/material.dart';

import '../widget/logo_withtext.dart';
import '../widget/deli_password_text_field.dart';
import '../widget/deli_text_field.dart';

import '../screens/forgot_password_screen.dart';
import '../widget/angle_backgorund.dart';
import '../widget/deli_border_button.dart';
import '../widget/navigator_text_back_button.dart';
import '../data/enum/landing_button.dart';

class SignInScreen extends StatefulWidget {
  static String routerName = "/sign_in";
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var isVisible = true;

  void handleShowHidePassword() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
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
                Positioned(
                  bottom: 40,
                  left: 20,
                  child: GestureDetector(
                    onTap: () {
                      print("Terms and Condtions");
                    },
                    child: Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LogoWithText(),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DeliTextFiled(
                        hintLabel: "Email",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DeliPasswordTextFiled(
                        isVisible: isVisible,
                        handleButton: () => handleShowHidePassword(),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, ForgotPasswordScreen.routerName);
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: DeliBorderButton(
                          buttonType: LandingButtonType.SIGNIN,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
