import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final String imageAdress;
  final String name;
  final String description;

  Contact(this.imageAdress, this.name, this.description);

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){},
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(imageAdress),
              ),
            ),
            Column(
              children: [
                Text(name),
                Text(description),
              ],
            )
          ],
        ));
  }
}
