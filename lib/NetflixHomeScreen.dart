/********************************************************** 
Autor        : Bibin Jose.
Description  : Home Screen of Netflix.  
Date         : 22/06/2022.
***********************************************************/

import 'package:flutter/material.dart';

import 'HeaderTxt.dart';
import 'MovieCard.dart';
import 'Navigationbar.dart';
import 'TIbuttons.dart';
import 'Tbuttons.dart';
import 'assets.dart';

class NetflixHomeScreen extends StatelessWidget {
  var p = SliverPadding(padding: EdgeInsets.all(5));
  var d = SliverPadding(padding: EdgeInsets.all(8));
  NetflixHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Tbuttons(Bname: "TV Shows"),
            Tbuttons(Bname: "Movies"),
            Tbuttons(Bname: "Categories"),
          ]),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: SizedBox(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(netflix), fit: BoxFit.cover)),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    print("pressed search button ");
                  },
                  icon: Icon(Icons.search),
                ),
              ],
              expandedHeight: 350,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(janaganamana, fit: BoxFit.cover),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        print("icon button pressed");
                      },
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(3),
                        ),
                        height: 35,
                        width: 90,
                        child: TextButton.icon(
                            onPressed: () {
                              print("Icon Button Pressed");
                            },
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.black,
                            ),
                            label: Text(
                              "Play",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ))),
                    IconButton(
                      onPressed: () {
                        print("icon button pressed");
                      },
                      icon: Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            d,
            HeaderTxt(txt: "New Release"),
            p,
            Moviecard(
                m1: janaganama,
                m2: janaganama,
                m3: janaganama,
                m4: janaganama,
                m5: janaganama,
                m6: janaganama),
            d,
            HeaderTxt(txt: "Action Anime"),
            p,
            Moviecard(
                m1: janaganama,
                m2: janaganama,
                m3: janaganama,
                m4: janaganama,
                m5: janaganama,
                m6: janaganama),
            d,
            HeaderTxt(txt: "Trending Now"),
            p,
            Moviecard(
                m1: janaganama,
                m2: janaganama,
                m3: janaganama,
                m4: janaganama,
                m5: janaganama,
                m6: janaganama),
            d,
            HeaderTxt(txt: "TV Shows Based on Books"),
            p,
            Moviecard(
                m1: janaganama,
                m2: janaganama,
                m3: janaganama,
                m4: janaganama,
                m5: janaganama,
                m6: janaganama),
            d,
            HeaderTxt(txt: "Action Movies"),
            p,
            Moviecard(
                m1: janaganama,
                m2: janaganama,
                m3: janaganama,
                m4: janaganama,
                m5: janaganama,
                m6: janaganama),
            d,
            HeaderTxt(txt: "BollyWood Movies"),
            p,
            Moviecard(
                m1: janaganama,
                m2: janaganama,
                m3: janaganama,
                m4: janaganama,
                m5: janaganama,
                m6: janaganama),
          ],
        ),
        bottomNavigationBar: Navigationbar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("floating button pressed");
          },
          backgroundColor: Colors.white,
          child: Icon(
            Icons.shuffle,
            color: Colors.blue,
            size: 30,
          ),
        ),
      ),
    );
  }
}
