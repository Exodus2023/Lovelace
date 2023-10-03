import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/app_widget.dart';

void main() async{
  await Firebase.initializeApp();
  runApp(AppWidget());
}
