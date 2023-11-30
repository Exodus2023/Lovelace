import 'package:flutter/material.dart';
import 'package:lovelace/pages/general/colors.dart';

class SaloonCardPro extends StatelessWidget {
  final String SaloonImage;
  final String SaloonName;
  final String Saloontype;
  final String SaloonStreet;
  final int SaloonNumber;

  SaloonCardPro(this.SaloonImage, this.SaloonName, this.Saloontype,
      this.SaloonStreet, this.SaloonNumber);

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.of(context).pushNamed('/saloonPageForClient');},
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(20),
            color: primary,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            SaloonName,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          SizedBox(width: 22,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit), iconSize: 32, color: Colors.white,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete), iconSize: 32, color: Colors.white),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        Icon(
                          Icons.business_center_sharp,
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
