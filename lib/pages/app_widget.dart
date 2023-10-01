import 'package:flutter/material.dart';

import 'login_page.dart';
import 'register_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register':(context) => RegisterPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
