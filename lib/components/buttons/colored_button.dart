import 'package:flutter/material.dart';

class ColoredButton extends StatelessWidget {
  final String texto;
  final Color color;
  final Function()? onPressed;

  ColoredButton(this.texto, this.color, this.onPressed);

  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(shape: StadiumBorder(), backgroundColor: color),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              texto,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          )),
    );
  }
}
