import 'package:flutter/material.dart';

class WidgetForm extends StatelessWidget {
  const WidgetForm({
    super.key,
    this.hint,
    this.suffixWidget, // changed from subfixWidget to suffixWidget
    this.obscure, // changed from obscu to obscure
  });

  final String? hint;
  final Widget? suffixWidget; // changed from subfixWidget to suffixWidget
  final bool? obscure; // changed from obscu to obscure

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 250,
      child: TextFormField(
        obscureText: obscure ?? false, // changed from obscu to obscure
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.black12,
          border: InputBorder.none,
          suffixIcon: suffixWidget, // changed from subfixWidget to suffixWidget
          hintText: hint ?? '', // handle null case for hint
        ),
      ),
    );
  }
}
