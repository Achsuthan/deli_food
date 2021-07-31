import 'package:flutter/material.dart';

import '../data/enum/landing_button.dart';
import '../screens/code_verfication_screen.dart';

class DeliBorderButton extends StatelessWidget {
  final LandingButtonType buttonType;
  const DeliBorderButton({
    required this.buttonType,
    Key? key,
  }) : super(key: key);

  void buttonHandler(BuildContext ctx) {
    print("button type $buttonType");
    if (buttonType == LandingButtonType.FORGOTCODEREQUEST) {
      Navigator.pushNamed(ctx, CodeVerificationScreen.routerName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => buttonHandler(context),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          buttonType == LandingButtonType.SIGNUP
              ? "REGISTER"
              : buttonType == LandingButtonType.SIGNIN
                  ? "SIGN IN"
                  : buttonType == LandingButtonType.FORGOTCODEREQUEST
                      ? "SEND"
                      : "RESET",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
