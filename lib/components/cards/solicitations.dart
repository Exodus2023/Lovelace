import 'package:flutter/material.dart';
import 'package:lovelace/components/buttons/colored_button.dart';
import 'package:lovelace/components/buttons/mini_button.dart';
import 'package:lovelace/pages/general/colors.dart';

class SolicitationsCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadiusDirectional.circular(20),
        boxShadow: kElevationToShadow[2],
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.jpg'),
                    radius: 60,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nome', style: TextStyle(color: Colors.white, fontSize: 18),),
                      Text('Salão: lovelace', style: TextStyle(color: Colors.white, fontSize: 18),),
                      Text('Serviço: Manicure', style: TextStyle(color: Colors.white, fontSize: 18),),
                      Text('Dia: ', style: TextStyle(color: Colors.white, fontSize: 18),),
                      Text('Horário: ', style: TextStyle(color: Colors.white, fontSize: 18),)
                    ],
                  ),
              ],
            ),
            SizedBox(height: 15,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ColoredButton('Aceitar', Colors.green, () => null),
                  ColoredButton('Recusar', Colors.red, () => null)
                  ],
                )
          ],
        ),
      ),
    );
  }
}
