import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/mini_button.dart';
import 'package:lovelace/components/dialogBoxes/confirm_box.dart';

class Horary extends StatelessWidget {
  final String hour1;
  final String hour2;
  final String hour3;
  final String hour4;

  final Function()? function;

  Horary(this.hour1, this.hour2, this.hour3, this.hour4,  this.function);

  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Icon(Icons.access_time, color: Colors.white, size: 75),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.pink.shade200,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
      ),
      contentPadding: EdgeInsets.all(0),
      titlePadding: EdgeInsets.all(0),
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      children: [
        Container(
            child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(children: [
                  Text(
                    'Horários',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MiniButton(hour1, 2, function),
                  SizedBox(
                    height: 10,
                  ),
                  MiniButton(hour2, 2, () {}),
                  SizedBox(
                    height: 10,
                  ),
                  MiniButton(hour3, 2, () {}),
                  SizedBox(
                    height: 10,
                  ),
                  MiniButton(hour4, 2, () {}),
                  SizedBox(
                    height: 10,
                  ),
                ])))
      ],
    );
  }
}
