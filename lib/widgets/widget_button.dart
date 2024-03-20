// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({
    super.key,
    required this.text,
    required this.pressFunc,
    this.gfButtonType,
    required IconData iconData,
  });

  final String text;
  final Function() pressFunc;
  final GFButtonType? gfButtonType;

  @override
  Widget build(BuildContext context) {
    return GFButton(
      onPressed: pressFunc,
      text: text,
      type: gfButtonType ?? GFButtonType.solid,
      shape: GFButtonShape.pills,
      size: GFSize.LARGE,
      position: GFPosition.start,
      color: Colors.green.shade400,
    );
  }
}
