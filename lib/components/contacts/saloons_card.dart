import 'package:flutter/material.dart';
import '../buttons/time_button.dart';

class SaloonCard extends StatelessWidget {
  final String SaloonImage;
  final String SaloonName;
  final String Saloontype;
  final String time1;
  final String time2;
  final String time3;
  final String time4;
  final String time5;

  SaloonCard(this.SaloonImage, this.SaloonName, this.Saloontype, this.time1, this.time2, this.time3, this.time4, this.time5);

  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(20),
          color: Colors.pink.shade200,
        ),
        child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  image: DecorationImage(image: AssetImage(SaloonImage))
                  ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 185,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(children: [
                      Text(
                    SaloonName,
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    Saloontype,
                    style: TextStyle(fontSize: 20),
                  ),
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TimeButton(time1, (){}),
                        TimeButton(time2, (){}),
                        TimeButton(time3, (){}),
                        TimeButton(time4, (){}),
                        TimeButton(time5, (){})
                      ],
                    ),
                  )
                ],
              ),
              ),
            ])));
  }
}
