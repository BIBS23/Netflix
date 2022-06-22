/********************************************************** 
Autor        : Bibin Jose.
Description  : This code is for First Sign in page of Netflix.  
Date         : 22/06/2022.
***********************************************************/

import 'package:flutter/material.dart';
import 'package:netflix/NavigatorTbutton.dart';
import 'package:netflix/TIbuttons.dart';

import 'NetflixHomeScreen.dart';

class FirstSignInPage extends StatelessWidget {
  const FirstSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close),color: Colors.grey,iconSize: 27,)
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              left: 30,
              right: 30,
              top: 160,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ready to watch?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      "Enter your email to create or sign in to \n                      your account",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    SizedBox(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            label: Text(
                              "Email",
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                        height: 60,
                        width: 300,
                        child: NavigatiorTbutton(
                          BTcolor: Colors.red,
                          newpage: NetflixHomeScreen(),
                          Bname: "GET STARTED",
                          Txtcolor: Colors.white,
                        )),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
