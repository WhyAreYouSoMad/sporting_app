import 'package:flutter/material.dart';
import 'package:sporting_app/screen/mian_screen.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'main_page',
    routes: {
      'main_page' : (context) => Mainpage()},
  ));
}
