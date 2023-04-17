import 'package:flutter/material.dart';
import 'package:sporting_app/common/constants.dart';

class TermCheckBox extends StatelessWidget {
  final String text;

  const TermCheckBox({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (bool? value) {},
        ),
        Text(text, style: const TextStyle(color: kTextColor)),
      ],
    );
  }
}
