import 'package:flutter/material.dart';
import 'package:oceanview/main.dart';
// ignore: unused_import
import 'constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case SETTING_ROUTE:
      //   return MaterialPageRoute(builder: (_) => HomePage());
      // case DEVELOPER_INTRO_ROUTE:
      //   return MaterialPageRoute(builder: (_) => ChangePasswordPage());
      default:
        return MaterialPageRoute(
            builder: (_) => const MyHomePage(title: 'initRoute'));
    }
  }
}
