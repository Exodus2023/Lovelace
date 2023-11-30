import 'package:flutter/material.dart';
import 'package:lovelace/components/cards/saloons_card_pro.dart';

class ProSaloonsPage extends StatefulWidget {
  State<ProSaloonsPage> createState() => ProSaloonsPageState();
}

class ProSaloonsPageState extends State<ProSaloonsPage> {
  List<SaloonCardPro> saloons = [
    SaloonCardPro('assets/images/logo.jpg', 'Lovelace', 'Manicure',
        'Raposo Tavares', 156),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              ...saloons,
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pushNamed('/saloonRegister');
          }),
    );
  }
}
