/********************************************************** 
Autor        : Bibin Jose.
Description  : Text button with icon .  
Date         : 22/06/2022.
***********************************************************/

import 'package:flutter/material.dart';

class TIbuttons extends StatelessWidget {
  final Tibutton;
  final Lname;
  const TIbuttons({
    Key? key,
    required this.Tibutton,
    required this.Lname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {
          print("Text Icon button presseed ");
        },
        icon: Icon(Tibutton),
        label: Text(Lname,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),));
  }
}


String janaganama = "assets/movie/janagana2.jpg";
String net = "assets/movie/n.jpg";
