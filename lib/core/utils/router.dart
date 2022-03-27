import 'package:flutter/material.dart';
import 'package:oceanview/presentation/page/dashboard.dart';
// ignore: unused_import
import 'constants.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case SETTING_ROUTE:
      //   return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(builder: (_) => const DashBoard());
    }
  }
}
