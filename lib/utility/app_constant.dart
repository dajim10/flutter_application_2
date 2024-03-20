import 'package:external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/states/display_map.dart';
import 'package:flutter_application_2/utility/app_dialog.dart';
import 'package:flutter_application_2/widgets/widget_button.dart';
import 'package:flutter_application_2/widgets/widget_image_assets.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AppConstant {
  // field
  static String webSite = 'https://www.rmutsv.ac.th';
  static List<String> paths = <String>[
    'images/service1.png',
    'images/service2.png',
    'images/service3.png',
    'images/service4.png',
    'images/service5.png',
  ];
  static List<String> title = <String>[
    'Internet',
    'Location',
    'My App',
    'Service',
    'About Us',
  ];

  static List<Function()> tapFuncs = <Function()>[
    () {
      AppDialog().normalDialog(
        title: 'Goto WebSite',
        iconWidget: WidgetImageAsset(path: paths[0]),
        contentWidget: const Text('Goto WebSite'),
        secondWidget: WidgetButton(
          text: 'WebSite',
          pressFunc: () async {
            final Uri uri = Uri.parse(webSite);
            if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
              throw 'Url False';
            }
          },
          iconData: Icons.check,
        ),
      );
    },
    () {
      Get.to(const DisplayMap());
    },
    () {
      AppDialog().normalDialog(
        title: 'Goto My App',
        iconWidget: WidgetImageAsset(path: paths[2]),
        contentWidget: const Text('Please Tap My App'),
        secondWidget: WidgetButton(
          text: 'My App',
          pressFunc: () async {
            Get.back();
            const String appStoreLink =
                'https://apps.apple.com/us/app/rutsapp/id6465794100';

            // ignore: deprecated_member_use
            if (await canLaunch(appStoreLink)) {
              // ignore: deprecated_member_use
              await launch(appStoreLink);
            } else {
              throw 'Could not launch $appStoreLink';
            }
            await LaunchApp.openApp(
                // androidPackageName: 'com.yingyong.xstream',
                appStoreLink:
                    'https://apps.apple.com/us/app/rutsapp/id6465794100');
          },
          iconData: Icons.check,
        ),
      );
    },
    () {},
    () {},
  ];

  static String appName = "RUTS MCAS";
  static String urlApiLogin = 'https://api.rmutsv.ac.th/elogin';
  static String urlApiReadProfile =
      'https://api.rmutsv.ac.th/personal/academic/';

  // method
  TextStyle? h1Style() {
    return const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 128, 171, 129),
      letterSpacing: 2.0,
      wordSpacing: 2.0,
    );
  }

  TextStyle? h2Style() {
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle? h3Style() {
    return const TextStyle(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey);
  }
  // constructor
}
