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
        return R.image.icon_home.svgPictureSize(size: 24);
      case RootTab.bus:
        return R.image.icon_bus.svgPictureSize(size: 24);
      case RootTab.diet:
        return R.image.icon_diet.svgPictureSize(size: 24);
      case RootTab.calendar:
        return R.image.icon_calendar.svgPictureSize(size: 24);
      case RootTab.menu:
        return R.image.icon_menu.svgPictureSize(size: 24);
    }
  }

  SvgPicture get selectedIcon {
    switch (this) {
      case RootTab.home:
        return R.image.icon_home_selected.svgPictureSize(size: 24);
      case RootTab.bus:
        return R.image.icon_bus_selected.svgPictureSize(size: 24);
      case RootTab.diet:
        return R.image.icon_diet_selected.svgPictureSize(size: 24);
      case RootTab.calendar:
        return R.image.icon_calendar_selected.svgPictureSize(size: 24);
      case RootTab.menu:
        return R.image.icon_menu_selected.svgPictureSize(size: 24);
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
    for (final _value in RootTab.values) {
      if (_value.index == index) {
        return _value;
      }
    }

    return RootTab.home;
  }
}
