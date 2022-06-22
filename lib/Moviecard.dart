/********************************************************** 
Autor        : Bibin Jose.
Description  : Refactoring code for Movie card / Movie Tile present in Neflix.
Date         : 22/06/2022.
***********************************************************/




import 'package:flutter/material.dart';
import 'package:netflix/assets.dart';

class Moviecard extends StatelessWidget {
  var di = VerticalDivider(
    width: 8,
  );

  final m1;
  final m2;
  final m3;
  final m4;
  final m5;
  final m6;
  Moviecard({
    Key? key,
    required this.m1,
    required this.m2,
    required this.m3,
    required this.m4,
    required this.m5,
    required this.m6,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 135,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      image: AssetImage(m1), fit: BoxFit.cover)),
            ),
            di,
            Container(
              
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      image: AssetImage(m2), fit: BoxFit.cover)),
            ),
            di,
            Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      image: AssetImage(m3), fit: BoxFit.cover)),
            ),
            di,
            Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      image: AssetImage(m4), fit: BoxFit.cover)),
            ),
            di,
            Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      image: AssetImage(m5), fit: BoxFit.cover)),
            ),
            di,
            Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                      image: AssetImage(m6), fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }
}