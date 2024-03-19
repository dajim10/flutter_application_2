// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetForm extends StatelessWidget {
  const WidgetForm({
    super.key,
    this.hint,
    this.subfixWidget,
    this.obscure,
    this.validateFunc,
    // ignore: non_constant_identifier_names
    this.textEditingController,
  });

  final String? hint;
  final Widget? subfixWidget; // changed from subfixWidget to suffixWidget
  final bool? obscure; // changed from obscu to obscure
  final String? Function(String?)? validateFunc;
  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: 250,
      child: TextFormField(
        controller: textEditingController,
        validator: validateFunc,
        obscureText: obscure ?? false, // changed from obscu to obscure
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 216, 216, 216),
          border: InputBorder.none,
          suffixIcon: subfixWidget, // changed from subfixWidget to suffixWidget
          hintText: hint ?? '', // handle null case for hint
        ),
      ),
    );
  }
}
