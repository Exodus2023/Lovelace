import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/large_button.dart';
import 'package:lovelace/components/imageMoldings/profile_molding.dart';
import 'package:lovelace/components/textfields/standart_textfield.dart';
import 'package:lovelace/components/texts/page_title.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String image = "assets/images/logo.jpg";
  TextEditingController controller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PageTitle("Cliente"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 30,
              ),
              ProfileMolding(image),
              SizedBox(
                height: 30,
              ),
              StandartTextField('Nome completo', false, Icon(Icons.person), controller),
              SizedBox(
                height: 15,
              ),
              StandartTextField('E-mail', false, Icon(Icons.email), controller),
              SizedBox(
                height: 15,
              ),
              StandartTextField('Numero de telefone', false, Icon(Icons.call), controller),
              SizedBox(
                height: 15,
              ),
              StandartTextField('Endereço', false, Icon(Icons.gite), controller),
              SizedBox(
                height: 15,
              ),
              StandartTextField('Senha', true, Icon(Icons.lock), controller),
              SizedBox(
                height: 30,
              ),
              LargeButton('Cadastrar', () {
                Navigator.of(context).pushReplacementNamed('/login');
              })
            ])),
      ),
    );
  }
}
