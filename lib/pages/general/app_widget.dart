import 'package:flutter/material.dart';
import 'package:lovelace/pages/client/home_page.dart';
import 'package:lovelace/pages/client/register_page.dart';
import 'package:lovelace/pages/general/talk_page.dart';
import 'package:lovelace/pages/professional/home_page_pro.dart';
import 'package:lovelace/pages/professional/profile_page_pro.dart';
import 'package:lovelace/pages/professional/profissionalRegister_page.dart';
import 'package:lovelace/pages/saloon/SaloonPageForClient.dart';
import 'package:lovelace/pages/saloon/saloon_register_page.dart';
import 'colors.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: primary,
        fontFamily: 'inter',
        ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/profissionalRegister': (context) => ProfissionalRegisterPage(),
        '/clientHome': (context) => HomePage(),
        '/saloonPageForClient': (context) => SaloonPageForClient(),
        '/profissionalHome': (context) => HomePagePro(),
        '/saloonRegister':(context) => SaloonRegisterPage(),
        '/profissionalProfilePage':(context) => ProfilePagePro(),
        '/talkPage': (context) => TalkPage()
      },
    );
  }
}
