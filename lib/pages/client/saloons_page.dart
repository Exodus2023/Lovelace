import 'package:flutter/material.dart';
import 'package:lovelace/components/contacts/saloons_card.dart';
import 'package:lovelace/components/textfields/search_textfield.dart';

class SaloonsPage extends StatefulWidget {
  const SaloonsPage({super.key});

  @override
  State<SaloonsPage> createState() => _SaloonsPageState();
}

class _SaloonsPageState extends State<SaloonsPage> {
  List<SaloonCard> saloons = [
     SaloonCard('assets/images/logo.jpg', 'Lovelace', 'cabeleleiro', 'Raposo Tavares', 156),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 80,
        title: Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: SearchTextField(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...saloons,
            ]
          ),
        ),
      ),
    );
  }
}
