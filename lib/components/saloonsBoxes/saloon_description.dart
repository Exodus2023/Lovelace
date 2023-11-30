import 'package:flutter/material.dart';
import 'package:lovelace/pages/general/colors.dart';

class SaloonDescrition extends StatelessWidget {
  final String description;

  SaloonDescrition(this.description);

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        color: primary,
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
