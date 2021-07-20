import 'package:deli_food/data/enum/landing_button.dart';
import 'package:flutter/material.dart';

class LoginBUtton extends StatelessWidget {
  final LandingButtonType buttonType;

  const LoginBUtton({required this.buttonType, Key? key}) : super(key: key);

  loginButtonPressed() {
    print("User pressed $buttonType");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: loginButtonPressed,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset(
                buttonType == LandingButtonType.FACEBOOK
                    ? "assets/facebook.png"
                    : buttonType == LandingButtonType.GOOGLE
                        ? "assets/google.png"
                        : "assets/logo_red.png",
                height: 40,
                width: 40,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    buttonType == LandingButtonType.FACEBOOK
                        ? "Sign in with Facebook"
                        : buttonType == LandingButtonType.GOOGLE
                            ? "Sign in with Google"
                            : "Sign in with Deli Food",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
