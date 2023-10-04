import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {

  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Pesquisar salão',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),),
      ),
    );
  }
}
