import 'package:flutter/material.dart';

class ProfileTextfield extends StatelessWidget {

  final String hintText;
  final Icon icon;

  ProfileTextfield(this.hintText, this.icon);

  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            prefixIcon: icon,
            hintText: hintText,
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.pink, width: 3))));
  }
}
