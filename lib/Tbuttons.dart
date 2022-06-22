/********************************************************** 
Autor        : Bibin Jose.
Description  : Refactor of Textbutton.  
Date         : 22/06/2022.
***********************************************************/

import 'package:flutter/material.dart';

class Tbuttons extends StatelessWidget {
  final String Bname;
  const Tbuttons({
    Key? key,
    required this.Bname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          print("App bar button pressed");
        },
        child: Text(
          Bname,
          style: TextStyle(color: Colors.white,fontSize: 18),
        ));
  }
}
