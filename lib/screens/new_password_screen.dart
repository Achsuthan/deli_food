import 'package:flutter/material.dart';

import '../data/enum/landing_button.dart';
import '../widget/deli_border_button.dart';
import '../widget/deli_password_text_field.dart';
import '../widget/logo_withtext.dart';
import '../widget/navigator_text_back_button.dart';
import '../widget/angle_backgorund.dart';

class NewPasswordScreen extends StatefulWidget {
  static String routerName = "/new_password";
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
                        "CHOOSE NEW PASSWORD",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "A Strong password is combination of letters and puncutation marks. it must atlest 6 characters long.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DeliPasswordTextFiled(
                        isVisible: isVisible,
                        handleButton: handleShowHidePassword,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: DeliBorderButton(
                              buttonType: LandingButtonType.RESET))
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
