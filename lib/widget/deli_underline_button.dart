import 'package:deli_food/data/enum/landing_button.dart';
import 'package:flutter/material.dart';

class DeliUnderlineButton extends StatelessWidget {
  final LandingButtonType buttonType;
  const DeliUnderlineButton({required this.buttonType, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () => {print("user pressed $buttonType")},
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
