import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widget/logo_withtext.dart';
import '../widget/deli_border_button.dart';
import '../widget/deli_password_text_field.dart';
import '../widget/deli_text_field.dart';
import '../widget/navigator_text_back_button.dart';
import '../data/enum/landing_button.dart';

class RegisterScreen extends StatefulWidget {
  static String routerName = "/register";
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var isVisible = false;

  handleShowHidePassword() {
    print("handleShowHidePassword $isVisible");
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 0,
          leading: NavigatorTextBackButton()),
      backgroundColor: Colors.red,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LogoWithText(),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DeliTextFiled(
                    hintLabel: "Username",
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
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: DeliBorderButton(
                      buttonType: LandingButtonType.SIGNUP,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "By registering, you aggree to the Deli Food ",
                          ),
                          TextSpan(
                            text: "Terms and condition",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Terms and conditon");
                              },
                          ),
                          TextSpan(
                            text: " and ",
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Privacy Policy");
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
