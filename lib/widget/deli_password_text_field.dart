import 'package:flutter/material.dart';

import '../widget/text_field_decoration.dart';

class DeliPasswordTextFiled extends StatelessWidget {
  final bool isVisible;
  final Function handleButton;
  const DeliPasswordTextFiled(
      {required this.isVisible, required this.handleButton, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isVisible,
      cursorColor: Colors.white,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: TextFiledDecoration.getTextFiledDecoration(
        labelHint: "Password",
        isPassword: true,
        isVisible: isVisible,
        buttonHandler: () => handleButton,
      ),
    );
  }
}
