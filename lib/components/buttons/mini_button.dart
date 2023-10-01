import 'package:flutter/material.dart';

class MiniButton extends StatelessWidget {
  final String texto;
  final double width;
  final Function()? onPressed;

  MiniButton(this.texto, this.width, this.onPressed);

  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / width,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              texto,
              style: TextStyle(fontSize: 16),
            ),
          )),
    );
  }
}
