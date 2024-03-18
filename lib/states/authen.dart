import 'package:flutter/material.dart';
import 'package:flutter_application_2/utility/app_constant.dart';
import 'package:flutter_application_2/widgets/widget_form.dart';
import 'package:flutter_application_2/widgets/widget_image_assets.dart';
import 'package:flutter_application_2/widgets/widget_text.dart';

class Authen extends StatelessWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: ListView(
          children: [
            Column(
              children: [
                WidgetImageAsset(
                  size: 200,
                ),
                WidgetText(
                  data: AppConstant.appName,
                  textStyle: AppConstant().h1Style(),
                ),
                Column(
                  children: [
                    WidgetForm(
                        hint: 'User :', subfixWidget: const Icon(Icons.email)),
                    WidgetForm(hint: 'Password :'),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
