import 'package:flutter/material.dart';
import 'package:lovelace/pages/chat_page.dart';
import 'package:lovelace/pages/profile_page.dart';
import 'package:lovelace/pages/saloons_page.dart';
import 'package:lovelace/pages/setting_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int pageIndex = 0;
  late PageController pc;

  void initState() {
    super.initState();
    pc = PageController(initialPage: pageIndex);
  }

  setPage(page) {
    setState(() {
      pageIndex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          ProfilePage(),
          SaloonsPage(),
          ChatPage(),
          SettingPage(),
        ],
        onPageChanged: setPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Perfil"),
          BottomNavigationBarItem(icon: Icon(Icons.business_rounded), label: "Salões"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Configurações"),
        ],
        onTap: (page) {
          pc.animateToPage(page,
              duration: Duration(milliseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}
