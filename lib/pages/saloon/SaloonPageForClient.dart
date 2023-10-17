import 'package:flutter/material.dart';
import 'package:lovelace/components/texts/page_title.dart';

class SaloonPageForClient extends StatefulWidget {
  State<SaloonPageForClient> createState() => _SaloonPageForClientState();
}

class _SaloonPageForClientState extends State<SaloonPageForClient> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: PageTitle('Lovelace'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.pink),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
                children: [
                  Text('Dias de atendimento: S, T, Q, Q, S, S, D'),
                  Text('Horários: 14:30 15:30 16:30 17:00')
                  ]),
          ),
          SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text('Descrição',
                style: TextStyle(fontSize: 15),
                ),
                Text('texto...')
              ]
            )
          ) 
        ]),
      ),
    );
  }
}
