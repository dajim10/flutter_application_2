import 'package:get/get.dart';
import 'package:flutter_application_2/models/data_model.dart';

class AppController extends GetxController {
  RxBool redEye = true.obs;
  RxInt indexBody = 0.obs;

  RxList<DataModel> dataModels = <DataModel>[].obs;
}
