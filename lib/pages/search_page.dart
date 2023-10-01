import 'package:flutter/material.dart';
import 'package:lovelace/components/textfields/standart_textfield.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: StandartTextField('Pesquisar salão', false, Icon(Icons.search)),
           )
        ],
      )
    );
  }
}


