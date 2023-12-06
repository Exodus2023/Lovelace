import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/google_button.dart';
import 'package:lovelace/components/buttons/large_button.dart';
import 'package:lovelace/components/buttons/text_button.dart';
import 'package:lovelace/components/textfields/standart_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  void login() {
    Navigator.of(context).pushReplacementNamed('/profissionalHome');
  }

  void login2() {
    Navigator.of(context).pushReplacementNamed('/clientHome');
  }

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
              child: Image.asset('assets/images/logo_sem_fundo.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            StandartTextField('E-mail', false, Icon(Icons.email), controller1),
            SizedBox(
              height: 15,
            ),
            StandartTextField('Senha', true, Icon(Icons.lock), controller2),
            SizedBox(
              height: 5,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: MyTextButton('Esqueci minha senha', () => null)),
            SizedBox(
              height: 30,
            ),
            LargeButton('Entrar', login),
            SizedBox(
              height: 7,
            ),
            Text('ou', style: TextStyle(fontSize: 18)),
            SizedBox(
              height: 7,
            ),
            GoogleButton(login2),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            MyTextButton('Cadastrar-se como cliente', () {
              Navigator.of(context).pushNamed('/register');
            }),
            MyTextButton('Cadastrar-se como profissional', () {
              Navigator.of(context).pushNamed('/profissionalRegister');
            })
          ],
        ),
      ),
    ));
  }
}
