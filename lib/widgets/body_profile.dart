import 'package:flutter/material.dart';
import 'package:flutter_application_2/utility/app_controller.dart';
import 'package:flutter_application_2/utility/app_service.dart';
import 'package:flutter_application_2/widgets/widget_text.dart';
import 'package:flutter_application_2/widgets/widget_title.dart';
import 'package:get/get.dart';

class BodyProfile extends StatefulWidget {
  const BodyProfile({super.key});

  @override
  State<BodyProfile> createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  AppController appController = Get.put(AppController());
  @override
  void initState() {
    super.initState();

    AppService().processReadAPIwithToken();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => appController.dataModels.isEmpty
        ? const SizedBox()
        : ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              WidgetText(
                  data:
                      '${appController.dataModels.last.prefix}${appController.dataModels.last.fname} ${appController.dataModels.last.lname}'),
              WidgetTitle(
                  head: 'Position :',
                  tail: appController.dataModels.last.aposition),
              WidgetTitle(
                  head: 'Campus :',
                  tail: appController.dataModels.last.campusname),
              WidgetTitle(
                  head: 'Faculty :',
                  tail: appController.dataModels.last.facultyname),
              WidgetTitle(
                  head: 'Department :',
                  tail: appController.dataModels.last.departmentname),
              WidgetTitle(
                  head: 'Section :',
                  tail: appController.dataModels.last.sectionname),
              WidgetTitle(
                  head: 'Gender :', tail: appController.dataModels.last.gender),
            ],
          ));
  }
}
