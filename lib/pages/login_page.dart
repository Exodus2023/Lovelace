import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/text_button.dart';
import 'package:lovelace/components/textfields/standart_textfield.dart';

import '../components/buttons/large_button.dart';
import '../components/texts/page_title.dart';

class LoginPage extends StatelessWidget {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50,),
                Container(
                  width: 300,
                  height: 300,
                  child: Image.asset('assets/images/logo.png'),
                  ),
                SizedBox(
                  height: 30,
                  ),
                StandartTextField('E-mail', false, Icon(Icons.email)),
                SizedBox(
                  height: 15,
                ),
                StandartTextField('Senha', true, Icon(Icons.lock)),
                SizedBox(
                  height: 5,
                ),
                MyTextButton('Esqueci minha senha', () => null),
                SizedBox(
                height: 30,
                ),
                LargeButton('Entrar', () {
                  Navigator.of(context).pushReplacementNamed('/home');
                  }),
                SizedBox(height: 20,),
                MyTextButton('Cadastrar-se como cliente', (){ Navigator.of(context).pushNamed('/register');}),
                MyTextButton('Cadastrar-se como profissional', () => null)
          ],
        ),
      ),
    )
   );
  }
}
