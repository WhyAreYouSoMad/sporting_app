import 'package:flutter/material.dart';
import 'package:sporting_app/common/constants.dart';

class MyTextFormField extends StatelessWidget {
  final String hintText;

  const MyTextFormField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: kPrimaryColor,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(width: 0.5),
        ),
      ),
    );
  }
}
