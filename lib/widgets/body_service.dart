import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/widget_text.dart';

class BodyService extends StatelessWidget {
  const BodyService({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetText(data: 'This is Service');
  }
}
