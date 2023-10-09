import 'package:flutter/material.dart';
import 'package:lovelace/pages/cliente/home_page.dart';
import 'package:lovelace/pages/cliente/register_page.dart';
import 'package:lovelace/pages/profissional/profissionalRegister_page.dart';
import 'login_page.dart';


class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register':(context) => RegisterPage(),
        '/profissionalRegister': (context) => ProfissionalRegisterPage(), 
        '/home': (context) => HomePage(),
      },
    );
  }
}
