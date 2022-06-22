/********************************************************** 
Autor        : Bibin Jose.
Description  : Bottom Navigation button present in bottom of Home Screen  
Date         : 22/06/2022.
***********************************************************/

import 'package:flutter/material.dart';
import 'package:netflix/NavigationButtonRefactor.dart';

class Navigationbar extends StatelessWidget {
  const Navigationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey.shade900,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavigationButtonRefactor(Nbar: Icons.home_filled,),
          NavigationButtonRefactor(Nbar: Icons.videogame_asset_outlined),
          NavigationButtonRefactor(Nbar: Icons.video_collection_outlined),
          NavigationButtonRefactor(Nbar: Icons.tag_faces),
          NavigationButtonRefactor(Nbar: Icons.download_for_offline_outlined),
        ],
      ),
    );
  }
  
}