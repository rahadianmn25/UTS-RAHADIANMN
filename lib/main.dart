import 'package:flutter/material.dart';
import 'package:rahadianmnuts/splashscreen.dart';
import 'package:rahadianmnuts/itemkamera.dart';
import 'package:rahadianmnuts/itemdetail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => SplashScreenPage(),
      '/itemkamera': (context) => Itemdetailkamera(),
      '/itemdetail': (context) => Itemdetailkamera(),
    },
  ),
  );
}