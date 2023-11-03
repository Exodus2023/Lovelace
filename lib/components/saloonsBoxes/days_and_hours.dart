import 'package:flutter/material.dart';

class DaysAndHours extends StatelessWidget {
  final String hour1;
  final String hour2;
  final String hour3;
  final String hour4;

  DaysAndHours(this.hour1, this.hour2, this.hour3, this.hour4);

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.pink[200],
        borderRadius: BorderRadiusDirectional.circular(20),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          'Dias de atendimento: S, T, Q, Q, S, S, D',
          style: TextStyle(
            fontSize: 21,
            color: Colors.white,
            )
          ),
        Text(
          'Horários: $hour1 $hour2 $hour3 $hour4',
          style: TextStyle(
            fontSize: 23,
            color: Colors.white,
          )
        ),
      ]),
    );
  }
}
