import 'package:flutter/material.dart';

class AppConstant {
  // field
  static String appName = "RUTS MCAS";
  static String urlApiLogin = 'https://api.rmutsv.ac.th/elogin';

  // method
  TextStyle? h1Style() {
    return const TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
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
