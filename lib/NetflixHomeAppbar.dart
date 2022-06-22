/********************************************************** 
Autor        : Bibin Jose.
Description  : This code is for top Right Sign in Button.  
Date         : 22/06/2022.
***********************************************************/



import 'package:flutter/material.dart';

import 'NetflixHomeScreen.dart';
import 'NavigatorTbutton.dart';
import 'assets.dart';

class NetflixHomeAppbar extends StatelessWidget {
  const NetflixHomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.keyboard_arrow_left_sharp),
                color: Colors.grey,
                iconSize: 27,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(netflix), fit: BoxFit.contain)),
              ),
            ],
          ),
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
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            hintText: "Email or phone number"),
                      ),
                    ),
                     Padding(padding: EdgeInsets.all(6)),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)),
                          label: Text("Password"),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8)),
                    SizedBox(
                        height: 60,
                        width: 300,
                        child: NavigatiorTbutton(
                          BTcolor: Colors.red,
                          newpage: NetflixHomeScreen(),
                          Bname: "Sign in ",
                          Txtcolor: Colors.white,
                        )),
                    Padding(padding: EdgeInsets.all(6)),
                    Text("Need help?", style: TextStyle(color: Colors.grey)),
                    Padding(padding: EdgeInsets.all(6)),
                    Text(
                      "New to Netflix?Sign up now",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(padding: EdgeInsets.all(6)),
                    Text(
                      "Sign in is protected by Google reCAPTCHA to ensure You are not a bot.",
                      style: TextStyle(color: Colors.grey),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
