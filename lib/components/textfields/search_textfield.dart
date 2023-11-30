import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String hintText;

  SearchTextField(this.hintText);

  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
