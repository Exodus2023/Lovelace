import 'package:flutter/material.dart';
import 'package:lovelace/pages/professional/pro_infos_page.dart';
import 'package:lovelace/pages/professional/pro_saloons_page.dart';

class ProfilePagePro extends StatefulWidget {
  State<ProfilePagePro> createState() => ProfilePageProState();
}

class ProfilePageProState extends State<ProfilePagePro> {

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Perfil', style: TextStyle(color: Colors.white),),
          bottom: TabBar(tabs: <Widget>[
            Text('Eu', style: TextStyle(color: Colors.white),), 
            Text('Meus salões', style: TextStyle(color: Colors.white),)],
            labelPadding: EdgeInsets.all(8.0),
            ),
        ),
        body: TabBarView(
          children: [
            ProInfosPage(),
            ProSaloonsPage()
          ],
        ),
      )
    );
  }
}
