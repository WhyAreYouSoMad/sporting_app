import 'package:flutter/material.dart';

class MyDropdownButtonFormField extends StatelessWidget {
  final List<String> items;
  String initValue;


  MyDropdownButtonFormField({Key? key, required this.items, this.initValue = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: initValue,
      items: items
          .map(
            (label) => DropdownMenuItem(
              value: label,
              child: Text(label),
            ),
          )
          .toList(),
      onChanged: (value) {
        initValue = value!;
      },
    );
  }
}
