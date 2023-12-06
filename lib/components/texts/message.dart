import 'package:flutter/material.dart';

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  Message(this.text, this.date, this.isSentByMe);
}
