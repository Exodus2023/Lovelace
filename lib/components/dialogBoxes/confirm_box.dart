import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/mini_button.dart';

class ConfirmBox extends StatelessWidget {
  final todayDay;
  final horary;
  final Function()? function;

  ConfirmBox(this.todayDay, this.horary, this.function);

  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Icon(Icons.check_circle_outline, color: Colors.white, size: 75),
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
        Padding(
          padding: EdgeInsets.all(8),
          child: Text(
              'Confirmar agendamento para o dia $todayDay, ás $horary ?',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MiniButton('Confirmar', 2.8, function),
            MiniButton('Cancelar', 3, () {
              Navigator.of(context).pop();
            })
          ],
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
}
