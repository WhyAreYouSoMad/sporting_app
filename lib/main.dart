import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sporting_app/view/pages/main/main_holder.dart';
import 'package:sporting_app/view/pages/main/main_page.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'main_page',
      routes: {
        'main_page' : (context) => const MainHolder()
      },
    );
  }
}