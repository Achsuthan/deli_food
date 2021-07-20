import 'package:flutter/material.dart';

class LogoWithText extends StatelessWidget {
  const LogoWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 100,
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
      ],
    );
  }
}
