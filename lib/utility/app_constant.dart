import 'package:flutter/material.dart';

class AppConstant {
  // field
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
