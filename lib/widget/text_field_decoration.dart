import 'package:flutter/material.dart';

class TextFiledDecoration {
  static emptyFunction() {}
  static InputDecoration getTextFiledDecoration({
    required String labelHint,
    bool isPassword = false,
    bool isVisible = false,
    Function buttonHandler = emptyFunction,
  }) {
    return InputDecoration(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      labelText: labelHint,
      labelStyle: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      suffixIcon: isPassword
          ? IconButton(
              icon: Icon(
                isVisible
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
              ),
              color: Colors.white,
              onPressed: buttonHandler(),
            )
          : null,
    );
  }
}
