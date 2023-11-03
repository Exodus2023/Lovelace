import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/mini_button.dart';

class RequestSent extends StatelessWidget {
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Icon(Icons.send, color: Colors.white, size: 75),
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      children: [
        SizedBox(height: 20,),
        Text(
          'Solicitação enviada',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: MiniButton('ok', 3, () => Navigator.of(context).pop()),
              )
          ],
        )
      ],
    );
  }
}
