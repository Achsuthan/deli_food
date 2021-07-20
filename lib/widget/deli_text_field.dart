import 'package:flutter/material.dart';

import '../widget/text_field_decoration.dart';

class DeliTextFiled extends StatelessWidget {
  final String hintLabel;

  const DeliTextFiled({
    required this.hintLabel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      cursorColor: Colors.white,
      decoration: TextFiledDecoration.getTextFiledDecoration(
        labelHint: hintLabel,
      ),
    );
  }
}
