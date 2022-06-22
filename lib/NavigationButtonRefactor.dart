/********************************************************** 
Autor        : Bibin Jose.
Description  : Refactoring of Navigation buttons 
Date         : 22/06/2022.
***********************************************************/

import 'package:flutter/material.dart';

class NavigationButtonRefactor extends StatelessWidget {
  final IconData Nbar;
  const NavigationButtonRefactor({
    Key? key,
    required this.Nbar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
    
    
      highlightColor: Colors.blue,
      
      onPressed: () {
        print("icon button pressed");
      },
      icon: Icon(Nbar,),
      iconSize: 28,
      
      
      color: Colors.grey,
      splashRadius: 20,
    );
  }
}