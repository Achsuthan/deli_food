import 'package:flutter/material.dart';

import '../data/enum/landing_button.dart';
import '../screens/register_screen.dart';

class DeliUnderlineButton extends StatelessWidget {
  final LandingButtonType buttonType;
  const DeliUnderlineButton({required this.buttonType, Key? key})
      : super(key: key);

  handleButtonClick(BuildContext context) {
    if (buttonType == LandingButtonType.REGISTER) {
      Navigator.pushNamed(context, RegisterScreen.routerName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () => handleButtonClick(context),
        child: Text(
          buttonType == LandingButtonType.REGISTER
              ? "Create a new account"
              : "Continue as guest",
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
