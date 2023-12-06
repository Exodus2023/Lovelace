import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final String imageAdress;
  final String name;
  final String description;

  Contact(this.imageAdress, this.name, this.description);

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/talkPage');
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.black),
                  top: BorderSide(color: Colors.black))),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(imageAdress),
                  radius: 40,
                ),
              ),
              Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 28),
                  ),
                  Text(description),
                ],
              )
            ],
          ),
        ));
  }
}
