import 'package:flutter/material.dart';
import 'package:sporting_app/view/pages/main/main_page/components/main_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainBody(),
    );
  }
}
