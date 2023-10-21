import 'package:flutter/material.dart';

class SaloonCard extends StatelessWidget {
  final String SaloonImage;
  final String SaloonName;
  final String Saloontype;
  final String SaloonStreet;
  final int SaloonNumber;

  SaloonCard(this.SaloonImage, this.SaloonName, this.Saloontype,
      this.SaloonStreet, this.SaloonNumber);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/saloonPageForClient');
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20),
            color: Colors.pink.shade200,
            boxShadow: kElevationToShadow[2]),
        child: Row(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20),
                    bottomStart: Radius.circular(20)),
                image: DecorationImage(image: AssetImage(SaloonImage)),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        SaloonName,
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        Icon(
                          Icons.wallet,
                          color: Colors.white,
                        ),
                        Text(
                          ' $Saloontype',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                      Row(children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        Text(
                          ' Rua $SaloonStreet, nº $SaloonNumber',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                    ]))
          ],
        ),
      ),
    );
  }
}
