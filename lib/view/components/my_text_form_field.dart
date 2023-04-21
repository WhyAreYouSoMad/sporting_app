import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hint;
  final funValidator;
  final bool obscureText;
  final controller;
  final double borderRadious;

  const MyTextFormField({
    Key? key,
    required this.hint,
    required this.funValidator,
    this.obscureText = false,
    this.controller,
    this.borderRadious = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: funValidator,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadious),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadious),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadious),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadious),
        ),
      ),
    );
  }
}
