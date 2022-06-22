import 'package:flutter/material.dart';
import 'package:netflix/NetflixIntro.dart';
import 'package:netflix/NetflixSecondPage.dart';
import 'NetflixHomeScreen.dart';
import 'FirstSignInPage.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: NetflixIntro(),
    ),
  ));
}
