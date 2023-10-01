import 'package:flutter/material.dart';

class StandartTextField extends StatelessWidget {
  final String text;
  final bool password;
  final Icon icon;

  StandartTextField(this.text, this.password, this.icon);

  Widget build(BuildContext context) {
    return TextField(
      obscureText: password,
      decoration: InputDecoration(
        prefixIcon: icon,
        labelText: text,
        border: OutlineInputBorder(),
      ),
    );
  }
}
