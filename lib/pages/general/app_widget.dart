import 'package:flutter/material.dart';
import 'package:lovelace/pages/client/home_page.dart';
import 'package:lovelace/pages/client/register_page.dart';
import 'package:lovelace/pages/professional/profissionalRegister_page.dart';
import 'package:lovelace/pages/saloon/SaloonPageForClient.dart';
import 'login_page.dart';


class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch:  Colors.pink),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register':(context) => RegisterPage(),
        '/profissionalRegister': (context) => ProfissionalRegisterPage(), 
        '/home': (context) => HomePage(),
        '/saloonPageForClient':(context) => SaloonPageForClient()
      },
    );
  }
}
