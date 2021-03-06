import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/root_tab_enum.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/page/bus/bus_page.dart';
import 'package:oceanview/presentation/page/calendar/calendar_page.dart';
import 'package:oceanview/presentation/page/diet/diet_page.dart';
import 'package:oceanview/presentation/page/home/home_page.dart';
import 'package:oceanview/presentation/page/menu/menu_page.dart';

class BlocPageView extends StatelessWidget {
  const BlocPageView(this.rootTab, {Key? key}) : super(key: key);

  final RootTab rootTab;

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: context.read<DashBoardBloc>().controller,
      onPageChanged: (changed) =>
          context.read<DashBoardBloc>().add(PageSlided(changed)),
      children: const [
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
