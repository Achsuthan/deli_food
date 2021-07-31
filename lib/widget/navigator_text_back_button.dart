import 'package:flutter/material.dart';

class NavigatorTextBackButton extends StatelessWidget {
  const NavigatorTextBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        "Back",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
      ),
    );
    ;
  }
}
