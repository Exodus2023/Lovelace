import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String text;

  PageTitle(this.text);

  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 40, color: Colors.pink),
    );
  }
}
