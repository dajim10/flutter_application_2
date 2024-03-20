import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/widget_button.dart';
import 'package:flutter_application_2/widgets/widget_text.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

class AppDialog {
  void normalDialog({
    required String title,
    Widget? iconWidget,
    Widget? contentWidget,
    Widget? firstWidget,
  }) {
    Get.dialog(
      AlertDialog(
        title: WidgetText(data: title),
        icon: iconWidget,
        content: contentWidget,
        actions: [
          firstWidget ??
              WidgetButton(
                text: 'Ok',
                pressFunc: () => Get.back(),
                gfButtonType: GFButtonType.outline,
                iconData: Icons.check,
              ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}
