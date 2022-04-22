import 'package:flutter/material.dart';
import 'package:oceanview/presentation/page/bus/bus_page.dart';
import 'package:oceanview/presentation/page/calendar/calendar_page.dart';
import 'package:oceanview/presentation/page/diet/diet_page.dart';
import 'package:oceanview/presentation/page/home/home_page.dart';
import 'package:oceanview/presentation/page/menu/menu_page.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        HomePage(),
        BusPage(),
        DietPage(),
        CampusEventPage(),
        MenuPage(),
      ],
    );
    // switch (rootTab) {
    //   case RootTab.home:
    //     return const HomePage();
    //   case RootTab.bus:
    //     return const BusPage();
    //   case RootTab.diet:
    //     return const DietPage();
    //   case RootTab.calendar:
    //     return const CalendarPage();
    //   case RootTab.menu:
    //     return const MenuPage();
    // }
  }
}
