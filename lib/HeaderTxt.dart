/********************************************************** 
Autor        : Bibin Jose.
Description  : Refactoring code of Titles.  
Date         : 22/06/2022.
***********************************************************/

import 'package:flutter/material.dart';

class HeaderTxt extends StatelessWidget {
  final String txt;
  const HeaderTxt({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child:  Text(
        txt,
        style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
      ),
    );
  }
}