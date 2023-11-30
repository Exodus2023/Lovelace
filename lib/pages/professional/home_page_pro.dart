import 'package:flutter/material.dart';
import 'package:lovelace/pages/general/chat_page.dart';
import 'package:lovelace/pages/general/setting_page.dart';
import 'package:lovelace/pages/professional/profile_page_pro.dart';
import 'package:lovelace/pages/professional/solicitations_page.dart';

class HomePagePro extends StatefulWidget {
  State<HomePagePro> createState() => HomePageProState();
}

class HomePageProState extends State<HomePagePro> {
  int pageIndex = 0;
  late PageController pc;

  void initState() {
    super.initState;
    pc = PageController(initialPage: pageIndex);
  }

  setPage(page) {
    setState(() {
      pageIndex = page;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          ProfilePagePro(),
          SolicitationsPage(),
          ChatPage(),
          SettingPage()
        ],
        controller: pc,
        onPageChanged: setPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Perfil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), label: "Solicitações"),
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
