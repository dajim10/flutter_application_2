import 'package:dio/dio.dart';
import 'package:flutter_application_2/models/user_model.dart';
import 'package:flutter_application_2/states/main_home.dart';
import 'package:flutter_application_2/utility/app_constant.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getwidget/getwidget.dart';

class AppService {
  Future<void> processCheckLogin(
      {required String user, required String password}) async {
    print('## user ---> $user ,password = $password');

    Map<String, dynamic> map = {};
    map['username'] = user;
    map['password'] = password;

    await Dio().post(AppConstant.urlApiLogin, data: map).then((value) {
      print('## value ==>> $value');

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
}
