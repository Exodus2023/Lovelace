import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final Function()? onPressed;

  GoogleButton(this.onPressed);

  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white, shape: StadiumBorder(), side: BorderSide(width: 1)),
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/google.png"),
                backgroundColor: Colors.transparent,
                radius: 16,
              ),
              Text("    Entrar com o google", style: TextStyle(fontSize: 18, color: Colors.black),)
              ]
          ),
        ),
      ),
    );
  }
}
