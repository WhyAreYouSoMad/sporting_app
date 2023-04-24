import 'package:flutter/material.dart';

class MyDropdownButtonFormField extends StatelessWidget {
  final List<String> items;
  final String initValue;


  const MyDropdownButtonFormField({Key? key, required this.items, required this.initValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: initValue,
      items: items
          .map(
            (label) => DropdownMenuItem(
              child: Text(label),
              value: label,
            ),
          )
          .toList(),
      onChanged: (value) {},
    );
  }
}
