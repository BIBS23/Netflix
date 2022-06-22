/********************************************************** 
Autor        : Bibin Jose.
Description  : Intro of Netflix Logo.  
Date         : 22/06/2022.
***********************************************************/

import 'package:flutter/material.dart';
import 'package:netflix/NetflixSecondPage.dart';
import 'package:netflix/assets.dart';

class NetflixIntro extends StatelessWidget {
  const NetflixIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Stack(children: [
          Positioned(
            top: 490,
            bottom: 200,
            left: 133,
            right: 100,
            child: Text(
              "Tap to Continue",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ]),
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(netflix), fit: BoxFit.contain)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => NetflixSecondPage()));
      },
    );
  }
}
