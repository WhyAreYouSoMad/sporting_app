import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CompanyStadiumDetailTextFormField extends StatelessWidget {
  final funValidator;
  final bool obscureText;
  final TextEditingController controller;
  final bool digitOnly;

  const CompanyStadiumDetailTextFormField({
    Key? key,
    required this.funValidator,
    this.obscureText = false,
    required this.controller,
    this.digitOnly = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return digitOnly ? _digitFormField() : _textFormField();
  }

  TextFormField _textFormField() {
    return TextFormField(
    controller: controller,
    validator: funValidator,
    obscureText: obscureText,
  );
  }

  TextFormField _digitFormField() {
    return TextFormField(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      controller: controller,
      validator: funValidator,
      obscureText: obscureText,
    );
  }
}
