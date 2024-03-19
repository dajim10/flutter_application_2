// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:getwidget/types/gf_button_type.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({
    super.key,
    required this.text,
    required this.pressFunc,
  });

  final String text;
  final Function() pressFunc;

  @override
  Widget build(BuildContext context) {
    return GFButton(
      onPressed: pressFunc,
      text: text,
      type: GFButtonType.solid,
      shape: GFButtonShape.pills,
      size: GFSize.LARGE,
    );
  }
}
