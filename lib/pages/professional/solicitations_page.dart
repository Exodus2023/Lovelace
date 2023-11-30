import 'package:flutter/material.dart';
import 'package:lovelace/components/cards/solicitations.dart';
import 'package:lovelace/components/textfields/search_textfield.dart';

class SolicitationsPage extends StatefulWidget {
  State<SolicitationsPage> createState() => SolicitationsPageState();
}

class SolicitationsPageState extends State<SolicitationsPage> {
  List<SolicitationsCard> solicitations = [
    SolicitationsCard(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 80,
        title: Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: SearchTextField('Pesquisar solicitações'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(children: [
            ...solicitations,
          ]),
        ),
      ),
    );
  }
}
