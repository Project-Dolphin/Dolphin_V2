import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore_for_file: non_constant_identifier_names
class AppImages {
  static final AppImages _instance = AppImages._internal();

  factory AppImages() => _instance;

  AppImages._internal();

  static const String _imagePath = 'assets/images/';
  static const String _iconPath = '${_imagePath}icons/';
  static const String _logoPath = '${_imagePath}logos/';

  AppImage get logo => const AppImage('${_logoPath}logo.png');
  AppImage get logo_light => const AppImage('${_logoPath}logo_light.svg');
  AppImage get logo_dark => const AppImage('${_logoPath}logo_dark.svg');

  AppImage get icon_drop_down =>
      const AppImage('${_iconPath}icon_drop_down.svg');

  AppImage get icon_bus => const AppImage('${_iconPath}icon_bus.svg');
  AppImage get icon_calendar => const AppImage('${_iconPath}icon_calendar.svg');
  AppImage get icon_diet => const AppImage('${_iconPath}icon_diet.svg');
  AppImage get icon_home => const AppImage('${_iconPath}icon_home.svg');
  AppImage get icon_menu => const AppImage('${_iconPath}icon_menu.svg');
  AppImage get icon_list_bullet =>
      const AppImage('${_iconPath}icon_list_bullet.svg');
  AppImage get icon_magnify => const AppImage('${_iconPath}icon_magnify.svg');

  AppImage get icon_chevron_up =>
      const AppImage('${_iconPath}icon_chevron_up.svg');
  AppImage get icon_chevron_down =>
      const AppImage('${_iconPath}icon_chevron_down.svg');
  AppImage get icon_chevron_left =>
      const AppImage('${_iconPath}icon_chevron_left.svg');

  AppImage get icon_bell => const AppImage('${_iconPath}icon_bell.svg');
  AppImage get icon_bell_fill =>
      const AppImage('${_iconPath}icon_bell_fill.svg');

  AppImage get icon_bus_selected =>
      const AppImage('${_iconPath}icon_bus_selected.svg');
  AppImage get icon_arrow_right =>
      const AppImage('${_iconPath}icon_arrow_right.svg');
  AppImage get icon_calendar_selected =>
      const AppImage('${_iconPath}icon_calendar_selected.svg');
  AppImage get icon_diet_selected =>
      const AppImage('${_iconPath}icon_diet_selected.svg');
  AppImage get icon_home_selected =>
      const AppImage('${_iconPath}icon_home_selected.svg');
  AppImage get icon_menu_selected =>
      const AppImage('${_iconPath}icon_menu_selected.svg');
  AppImage get icon_event_dot =>
      const AppImage('${_iconPath}icon_event_dot.svg');

  AppImage get icon_developer_fill =>
      const AppImage('${_iconPath}icon_developer_fill.svg');
  AppImage get icon_error_send_fill =>
      const AppImage('${_iconPath}icon_error_send_fill.svg');
  AppImage get icon_library_fill =>
      const AppImage('${_iconPath}icon_library_fill.svg');
  AppImage get icon_phone_book_fill =>
      const AppImage('${_iconPath}icon_phone_book_fill.svg');
  AppImage get icon_school_web_fill =>
      const AppImage('${_iconPath}icon_school_web_fill.svg');
  AppImage get icon_setting_fill =>
      const AppImage('${_iconPath}icon_setting_fill.svg');

  // AppImage get splash_bg => const AppImage(_imagePath + 'splash_image_bg.jpeg');
}

class AppImage {
  final String path;

  const AppImage(this.path);

  Image image({
    Key? key,
    double? width,
    double? height,
    BoxFit fit = BoxFit.fill,
  }) {
    return Image.asset(
      path,
      key: key,
      width: width,
      height: height,
      fit: fit,
    );
  }

  Image imageSize({Key? key, double? size, BoxFit fit = BoxFit.fill}) {
    return Image.asset(
      path,
      key: key,
      width: size,
      height: size,
      fit: fit,
    );
  }

  SvgPicture svgPicture({
    Key? key,
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.fill,
  }) {
    return SvgPicture.asset(
      path,
      key: key,
      width: width,
      height: height,
      fit: fit,
      color: color,
    );
  }

  SvgPicture svgPictureSize({
    Key? key,
    double? size,
    Color? color,
    BoxFit fit = BoxFit.fill,
  }) {
    return SvgPicture.asset(
      path,
      key: key,
      width: size,
      height: size,
      fit: fit,
      color: color,
    );
  }
}
