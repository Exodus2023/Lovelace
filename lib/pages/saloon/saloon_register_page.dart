import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/large_button.dart';
import 'package:lovelace/components/buttons/mini_button.dart';
import 'package:lovelace/components/imageMoldings/profile_molding.dart';
import 'package:lovelace/components/textfields/standart_textfield.dart';
import 'package:lovelace/components/texts/page_title.dart';
import 'package:lovelace/pages/general/colors.dart';

class SaloonRegisterPage extends StatefulWidget {
  @override
  State<SaloonRegisterPage> createState() => SaloonResgisterPageState();
}

class SaloonResgisterPageState extends State<SaloonRegisterPage> {
  String image = "assets/images/logo.jpg";
  TimeOfDay selectedTime = TimeOfDay.now();
  TextEditingController controller = TextEditingController();

  void timePicker() async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PageTitle("Novo Salão"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: primary),
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
              StandartTextField('Nome do salão', false,
                  Icon(Icons.business_rounded), controller),
              SizedBox(
                height: 15,
              ),
              StandartTextField('E-mail', false, Icon(Icons.email), controller),
              SizedBox(
                height: 15,
              ),
              StandartTextField(
                  'Numero de telefone', false, Icon(Icons.call), controller),
              SizedBox(
                height: 15,
              ),
              StandartTextField(
                  'cep', false, Icon(Icons.location_on), controller),
              SizedBox(
                height: 15,
              ),
              StandartTextField('Serviço prestado', false,
                  Icon(Icons.business_center_sharp), controller),
              SizedBox(
                height: 15,
              ),
              StandartTextField('Descrição', false,
                  Icon(Icons.text_fields_rounded), controller),
              SizedBox(
                height: 15,
              ),
              StandartTextField('Número de funcionários', false,
                  Icon(Icons.group), controller),
              SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Text('Defina seus horários'),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MiniButton('horario 1', 3, timePicker),
                      MiniButton('horario 2', 3, timePicker)
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MiniButton('horario 3', 3, timePicker),
                      MiniButton('horario 4', 3, timePicker)
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              LargeButton('Cadastrar', () {})
            ])),
      ),
    );
  }
}
