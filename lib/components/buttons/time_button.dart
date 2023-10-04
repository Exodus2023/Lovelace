import 'package:flutter/material.dart';

class TimeButton extends StatelessWidget {
  final String texto;
  final Function()? onPressed;

  TimeButton(this.texto, this.onPressed);

  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width/10.5,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Padding(
            padding: EdgeInsets.all(2),
            child: Text(
              texto,
              style: TextStyle(fontSize: 8),
            ),
          )),
    );
  }
}
