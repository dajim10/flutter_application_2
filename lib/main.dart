import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/states/authen.dart';
import 'package:flutter_application_2/states/main_home.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

var getPages = <GetPage<dynamic>>[
  GetPage(name: '/authen', page: () => const Authen()),
  GetPage(name: '/mainHome', page: () => const MainHome()),
];

String? firstPage;

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();

  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init().then((value) {
    var result = GetStorage().read('user');

    if (result != null) {
      firstPage = '/mainHome';
      runApp(const MyApp());
    } else {
      firstPage = '/authen';
      runApp(const MyApp());
    }

    print('## value at Main --> $result');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: getPages,
      initialRoute: firstPage,
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  // ignore: unnecessary_overrides
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) => true;
  }
}
