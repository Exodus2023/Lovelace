import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/large_button.dart';
import 'package:lovelace/components/textfields/profile_textfield.dart';

class ProInfosPage extends StatefulWidget {
  State<ProInfosPage> createState() => ProInfosPageState();
}

class ProInfosPageState extends State<ProInfosPage> {
  String nome = 'profissional';
  String email = 'pro@gmail.com';
  String cep = '123456';

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo.jpg'),
                radius: MediaQuery.of(context).size.width / 4),
            SizedBox(
              height: 10,
            ),
            Text('Cliente'),
            SizedBox(
              height: 30,
            ),
            ProfileTextfield(nome, Icon(Icons.person)),
            SizedBox(
              height: 15,
            ),
            ProfileTextfield(email, Icon(Icons.email)),
            SizedBox(
              height: 15,
            ),
            ProfileTextfield(cep, Icon(Icons.gite)),
            SizedBox(
              height: 50,
            ),
            LargeButton('Editar perfil', () => null),
          ],
              ),
            ),
        ));
  }
}
