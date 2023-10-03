import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/google_button.dart';
import 'package:lovelace/components/buttons/text_button.dart';
import 'package:lovelace/components/textfields/standart_textfield.dart';
import '../components/buttons/large_button.dart';
import '../components/texts/page_title.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
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
            Container(
              width: 250,
              child: Image.asset('assets/images/logoSemFundo.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            StandartTextField('E-mail', false, Icon(Icons.email)),
            SizedBox(
              height: 15,
            ),
            StandartTextField('Senha', true, Icon(Icons.lock)),
            SizedBox(
              height: 5,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: MyTextButton('Esqueci minha senha', () => null)),
            SizedBox(
              height: 30,
            ),
            LargeButton('Entrar', () {
              Navigator.of(context).pushReplacementNamed('/home');
            }),
            SizedBox(
              height: 7,
            ),
            Text('Ou', style: TextStyle(fontSize: 18)),
            SizedBox(
              height: 7,
            ),
            GoogleButton(() => null),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            MyTextButton('Cadastrar-se como cliente', () {
              Navigator.of(context).pushNamed('/register');
            }),
            MyTextButton('Cadastrar-se como profissional', () => null)
          ],
        ),
      ),
    ));
  }
}
