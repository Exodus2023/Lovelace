import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/large_button.dart';
import 'package:lovelace/components/imageMoldings/profile_molding.dart';
import 'package:lovelace/components/textfields/standart_textfield.dart';
import 'package:lovelace/components/texts/page_title.dart';

class ProfissionalRegisterPage extends StatefulWidget {
  const ProfissionalRegisterPage({super.key});

  @override
  State<ProfissionalRegisterPage> createState() => _ProfissionalRegisterPageState();
}

class _ProfissionalRegisterPageState extends State<ProfissionalRegisterPage> {
  String image = "assets/images/logo.jpg";

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PageTitle("Profissional"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.pink),
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
              StandartTextField('Nome completo', false, Icon(Icons.person)),
              SizedBox(
                height: 15,
              ),
              StandartTextField('E-mail', false, Icon(Icons.email)),
              SizedBox(
                height: 15,
              ),
              StandartTextField('Numero de telefone', false, Icon(Icons.call)),
              SizedBox(
                height: 15,
              ),
              StandartTextField('Endereço', false, Icon(Icons.gite)),
              SizedBox(
                height: 15,
              ),
              StandartTextField('Senha', true, Icon(Icons.lock)),
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
