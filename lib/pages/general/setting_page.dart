import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/large_button.dart';
import 'package:lovelace/components/buttons/mini_button.dart';
import 'package:lovelace/components/texts/page_title.dart';


class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: PageTitle("Configurações"),
          centerTitle: true,
          elevation: 0,
          
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                LargeButton("Modo escuro", () {}),
                LargeButton("Notificações", () {}),
                LargeButton("Modo premium", () {}),
                LargeButton("Suporte", () {}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MiniButton("Sair", 2.5, () {
                      Navigator.of(context).pushReplacementNamed('/login');
                    }),
                    MiniButton("Excluir Conta", 2.2, () {}),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
