import 'package:flutter/material.dart';

class SaloonDescrition extends StatelessWidget {
  final String description;

  SaloonDescrition(this.description);

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.pink[200],
        borderRadius: BorderRadiusDirectional.circular(20),
      ),
      child: Column(
        children: [
          Text(
            'Descrição',
            style: TextStyle(fontSize: 23, color: Colors.white),
          ),
          SingleChildScrollView(
            child: Text(
              description,
              style: TextStyle(fontSize: 20, color: Colors.white)
              ),
          ),
      ]),
    );
  }
}
