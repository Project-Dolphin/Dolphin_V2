import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oceanview/core/config/r.dart';

enum RootTab {
  home,
  bus,
  diet,
  calendar,
  menu,
}

extension RootTabExt on RootTab {
  SvgPicture get icon {
    switch (this) {
      case RootTab.home:
        return R.image.icon_home.svgPicture(
          width: 20,
          height: 21.61,
          color: const Color(0xFFB7B7B7),
        );
      case RootTab.bus:
        return R.image.icon_bus.svgPicture(
          width: 20.31,
          height: 21.13,
          color: const Color(0xFFB7B7B7),
        );

      case RootTab.diet:
        return R.image.icon_diet.svgPicture(
          width: 12.44,
          height: 20.74,
          color: const Color(0xFFB7B7B7),
        );

      case RootTab.calendar:
        return R.image.icon_calendar.svgPicture(
          width: 20.37,
          height: 18.7,
          color: const Color(0xFFB7B7B7),
        );

      case RootTab.menu:
        return R.image.icon_menu.svgPicture(
          width: 18.03,
          height: 14.02,
          color: const Color(0xFFB7B7B7),
        );
    }
  }

  SvgPicture get selectedIcon {
    switch (this) {
      case RootTab.home:
        return R.image.icon_home_selected.svgPicture(
          width: 20,
          height: 21.61,
          color: const Color(0xFF0081FF),
        );
      case RootTab.bus:
        return R.image.icon_bus_selected.svgPicture(
          width: 20.31,
          height: 21.13,
          color: const Color(0xFF0081FF),
        );
      case RootTab.diet:
        return R.image.icon_diet_selected.svgPicture(
          width: 12.44,
          height: 20.74,
          color: const Color(0xFF0081FF),
        );

      case RootTab.calendar:
        return R.image.icon_calendar_selected.svgPicture(
          width: 20.37,
          height: 18.7,
          color: const Color(0xFF0081FF),
        );
      case RootTab.menu:
        return R.image.icon_menu_selected.svgPicture(
          width: 18.03,
          height: 14.02,
          color: const Color(0xFF0081FF),
        );
    }
  }

  String get text {
    switch (this) {
      case RootTab.home:
        return R.string.home;
      case RootTab.bus:
        return R.string.bus;
      case RootTab.diet:
        return R.string.diet;
      case RootTab.calendar:
        return R.string.calenadr;
      case RootTab.menu:
        return R.string.menu;
    }
  }

  int get index {
    switch (this) {
      case RootTab.home:
        return 0;
      case RootTab.bus:
        return 1;
      case RootTab.diet:
        return 2;
      case RootTab.calendar:
        return 3;
      case RootTab.menu:
        return 4;
    }
  }

  static RootTab from(int index) {
    for (final value in RootTab.values) {
      if (value.index == index) {
        return value;
      }
    }

    return RootTab.home;
  }
}
