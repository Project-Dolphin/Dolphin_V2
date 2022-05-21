import 'package:flutter/material.dart';
import 'package:oceanview/presentation/page/dashboard.dart';
import 'package:oceanview/presentation/page/menu/detail_page/developer_info_page.dart';
import 'package:oceanview/presentation/page/menu/detail_page/setting_page.dart';
import 'package:oceanview/presentation/page/running_bus/running_bus_page.dart';
import 'package:oceanview/presentation/page/splash/splash_page.dart';

import 'constants.dart';

class OceanViewRouter {
  static String initialRoute = AppConstants.SPLASH_ROUTE;
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppConstants.HOME_ROUTE:
        return MaterialPageRoute(builder: (_) => const DashBoard());
      case AppConstants.RUNNING_BUS_ROUTE:
        return MaterialPageRoute(builder: (_) => RunningBusPage());
      case AppConstants.SETTING_ROUTE:
        return PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const SettingPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
      case AppConstants.INFO_ROUTE:
        return PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              const InfoPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
      default:
        return MaterialPageRoute(builder: (_) => const SplashPage());
    }
  }
}
