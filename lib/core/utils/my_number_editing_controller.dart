import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyNumberEditingController extends TextEditingController {
  @override
  void clear() {
    text = '';
  }

  @override
  TextSelection get selection => super.selection;

  @override
  set selection(TextSelection value) => super.selection = value;

  @override
  TextSpan buildTextSpan({required BuildContext context, TextStyle? style, required bool withComposing}) {
    return TextSpan(style: style, text: text);
  }

  @override
  void setValue(String value) {
    if (value.isNotEmpty) {
      final number = int.tryParse(value);
      if (number != null) {
        text = number.toString();
      }
    }
  }

  @override
  void onEditingComplete() {
    if (text.isEmpty) {
      text = '0';
    }
  }

  @override
  void onSubmitted(String value) {
    if (text.isEmpty) {
      text = '0';
    }
  }

  @override
  TextEditingValue get value => super.value;

  @override
  set value(TextEditingValue value) {
    final number = int.tryParse(value.text);
    if (number != null) {
      text = number.toString();
    } else {
      text = '';
    }
    selection = value.selection;
  }

  @override
  void dispose() {
    super.dispose();
  }
}