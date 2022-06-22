/********************************************************** 
Autor        : Bibin Jose.
Description  : Second Page of Netflix .  
Date         : 22/06/2022.
***********************************************************/

import 'package:flutter/material.dart';
import 'package:netflix/FirstSignInPage.dart';
import 'package:netflix/NetflixHomeScreen.dart';

import 'package:netflix/NavigatorTbutton.dart';
import 'package:netflix/NetflixHomeAppbar.dart';
import 'package:netflix/Tbuttons.dart';
import 'package:netflix/assets.dart';

class NetflixSecondPage extends StatelessWidget {
  const NetflixSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(netflix), fit: BoxFit.cover)),
          ),
          actions: [
            Tbuttons(Bname: "PRIVACY"),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => (NetflixHomeAppbar())));
                },
                child: Text(
                  "SIGN IN",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              bottom: 20,
              left: 10,
              right: 10,
              child: SizedBox(
                  height: 55,
                  width: 300,
                  child: NavigatiorTbutton(
                    newpage: FirstSignInPage(),
                    BTcolor: Colors.red,
                    Bname: "GET STARTED",
                    Txtcolor: Colors.white,
                  )),
            ),
            Stack(
              children: [
                Positioned(
                  top: 125,
                  child: Row(
                    children: [
                      Container(
                        height: 130,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(janaganamana),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(janaganamana),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(janaganamana),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(children: [
                  Positioned(
                   
                    bottom: 215,
                    left: 55,
                    
                    child:Column(children: [
                  
                Text("Download and \n Watch offline",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 38)),
                Padding(padding: EdgeInsets.all(8)),
                Text("Always have something to \n watch offline",style: TextStyle(color: Colors.grey,fontSize: 20),),],),),
              ],

                
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}
