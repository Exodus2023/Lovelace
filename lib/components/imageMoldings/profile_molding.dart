import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMolding extends StatelessWidget {
  final String imageAdress;

  ProfileMolding(this.imageAdress);

  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(imageAdress),
      radius: MediaQuery.of(context).size.width/4,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: (){},
              child: Icon(CupertinoIcons.camera, color: Colors.white),
              )
          )
        ],
      ),
    );
  }
}
