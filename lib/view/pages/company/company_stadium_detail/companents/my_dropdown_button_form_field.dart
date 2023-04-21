import 'package:flutter/material.dart';

class MyDropdownButtonFormField extends StatelessWidget {

  const MyDropdownButtonFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: 'One',
      items: ['One', 'Two', 'Three']
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
