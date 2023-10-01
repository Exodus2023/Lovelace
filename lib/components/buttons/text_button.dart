import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {

  final String text;
  final Function()? onPressed;

  MyTextButton(this.text, this.onPressed);

  Widget build(BuildContext context) {
    return TextButton(
      child: Text(text),
      onPressed: onPressed,
    );
  }
}
