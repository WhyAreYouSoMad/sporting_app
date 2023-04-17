import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final funButton;

  const MyButton({Key? key, required this.text, required this.funButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: funButton,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green, fixedSize: const Size(312, 40)),
      child: Text(text),
    );
  }
}
