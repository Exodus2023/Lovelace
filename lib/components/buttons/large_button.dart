import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;

  LargeButton(this.text, this.onPressed);

  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(shape: StadiumBorder()),
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Text(
              text,
              style: TextStyle(fontSize: 18),
            ),
          )),
    );
  }
}
