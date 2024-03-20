import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/data_model.dart';
import 'package:flutter_application_2/models/user_model.dart';
import 'package:flutter_application_2/states/main_home.dart';
import 'package:flutter_application_2/utility/app_constant.dart';
import 'package:flutter_application_2/utility/app_controller.dart';
import 'package:flutter_application_2/utility/app_dialog.dart';
import 'package:flutter_application_2/widgets/widget_button.dart';
import 'package:flutter_application_2/widgets/widget_image_assets.dart';
import 'package:flutter_application_2/widgets/widget_text.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getwidget/getwidget.dart';

class AppService {
  AppController appController = Get.put(AppController());

  Future<void> processCheckLogin(
      {required String user, required String password}) async {
    Map<String, dynamic> map = {};
    map['username'] = user;
    map['password'] = password;

    await Dio().post(AppConstant.urlApiLogin, data: map).then((value) {
      UserModel model = UserModel.fromMap(value.data);

      if (model.status == 'ok') {
        // Login Success
        GetStorage().write('user', model.toMap());
        Get.offAll(const MainHome());
      } else {
        Get.snackbar(
            'Login Fail', 'Please Try Again !!  User or Password False  ',
            backgroundColor: GFColors.DANGER, colorText: GFColors.WHITE);
      }
    });
  }

  Future<void> processReadAPIwithToken() async {
    Map<String, dynamic> map = GetStorage().read('user');
    UserModel userModel = UserModel.fromMap(map);

    String token = userModel.token;

    String urlApi = '${AppConstant.urlApiReadProfile}$token';

    await Dio().get(urlApi).then((value) {
      Map<String, dynamic> map = value.data;
      if (map['status'] == 'ok') {
        var data = map['data'];
        // ignore: avoid_print
        print('##20mar data ==>> $data');
        print('##21mar data ที่ได้จาก api --> ${map['data']}');

        for (var element in data) {
          DataModel dataModel = DataModel.fromMap(element);
          appController.dataModels.add(dataModel);
        }
      } else {
        AppDialog().normalDialog(
            title: 'Token False !! Please Login Again',
            iconWidget: const WidgetImageAsset(),
            contentWidget:
                const WidgetText(data: 'Get out!!! Fuck you Login Again'),
            firstWidget: WidgetButton(
              text: 'Login Again',
              pressFunc: () async {
                await GetStorage()
                    .erase()
                    .then((value) => Get.offAllNamed('/authen'));
              },
              gfButtonType: GFButtonType.outline,
              iconData: Icons.login,
            ));
      }
    });
  }
}
