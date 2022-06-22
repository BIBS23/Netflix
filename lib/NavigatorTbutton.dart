/********************************************************** 
Autor        : Bibin Jose.
Description  : REfactor of route Navigation 
Date         : 22/06/2022.
***********************************************************/

import 'package:flutter/material.dart';

class NavigatiorTbutton extends StatelessWidget {
  final newpage;
  final String Bname;
  final Txtcolor;
  final size;
  final Color BTcolor;
  const NavigatiorTbutton({
    Key? key,
    this.size,
    required this.BTcolor,
    required this.Bname,
    this.Txtcolor,
    required this.newpage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => newpage));
        },
        child: Text(
          Bname,
          style: TextStyle(color: Txtcolor, fontSize: 20),
        ),
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(BTcolor)));
  }
}
