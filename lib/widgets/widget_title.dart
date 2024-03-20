// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_2/utility/app_constant.dart';
import 'package:flutter_application_2/widgets/widget_text.dart';

class WidgetTitle extends StatelessWidget {
  const WidgetTitle({
    super.key,
    required this.head,
    required this.tail,
  });

  final String head;
  final String tail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: WidgetText(data: head)),
        Expanded(
          flex: 2,
          child: WidgetText(
            data: tail,
          ),
        ),
      ],
    );
  }
}
