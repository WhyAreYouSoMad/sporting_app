import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/main/main_holder.dart';
import 'package:sporting_app/view/pages/main/main_page.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'main_page',
    routes: {
      // 'main_page' : (context) => MainPage()
      'main_page' : (context) => MainHolder()
    },
  ));
}
