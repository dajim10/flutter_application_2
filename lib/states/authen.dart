import 'package:flutter/material.dart';
import 'package:flutter_application_2/utility/app_constant.dart';
import 'package:flutter_application_2/utility/app_controller.dart';
import 'package:flutter_application_2/widgets/widget_button.dart';
import 'package:flutter_application_2/widgets/widget_form.dart';
import 'package:flutter_application_2/widgets/widget_icon_button.dart';
import 'package:flutter_application_2/widgets/widget_image_assets.dart';
import 'package:flutter_application_2/widgets/widget_text.dart';
import 'package:get/get.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  // นี่คือ dependeccy สำหรับ call ตัวแปรที่อยู่

  AppController appController = Get.put(AppController());

  // คือค่า key ที่ใช้จับการเปลี่ยนแปลงของ WidgetForm
  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: ListView(
          children: [
            Column(
              children: [
                displayImage(),
                displayAppName(),
                pathForm(),
                loginButton()
              ],
            )
          ],
        ),
      ),
    );
  }

  Container loginButton() {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        width: 250,
        child: WidgetButton(
            text: 'Login',
            pressFunc: () {
              if (keyForm.currentState!.validate()) {}
            }));
  }

  Widget pathForm() {
    return Form(
      key: keyForm,
      child: Column(
        children: [
          WidgetForm(
              validateFunc: (p0) {
                if (p0?.isEmpty ?? true) {
                  return 'Please Fill User';
                } else {
                  return null;
                }
              },
              hint: 'User :',
              subfixWidget: const Icon(Icons.account_circle)),
          Obx(() => WidgetForm(
                validateFunc: (p0) {
                  if (p0?.isEmpty ?? true) {
                    return 'Please Fill password';
                  } else {
                    return null;
                  }
                },
                hint: 'Password :',
                obscure: appController.redEye.value,
                subfixWidget: WidgetIconButton(
                  iconData: Icons.remove_red_eye,
                  pressFunc: () {
                    appController.redEye.value = !appController.redEye.value;
                  },
                ),
              )),
        ],
      ),
    );
  }

  WidgetText displayAppName() {
    return WidgetText(
      data: AppConstant.appName,
      textStyle: AppConstant().h1Style(),
    );
  }

  WidgetImageAsset displayImage() {
    return const WidgetImageAsset(
      size: 200,
    );
  }
}
