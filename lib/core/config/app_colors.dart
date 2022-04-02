import 'package:flutter/material.dart';

// ignore_for_file: non_constant_identifier_names
class AppColors {
  static final AppColors _instance = AppColors._internal();

  factory AppColors() => _instance;

  AppColors._internal();

  final Color transparent = Colors.transparent;
  final Color white = Colors.white;
  final Color black = Colors.black;

  final Color jnOrange = const Color(0XFFFF6900);

  final Color contents00 = const Color(0XFF0A0400);
  final Color contents01 = const Color(0XFF666666);
  final Color contents02 = const Color(0XFFA3A3A3);
  final Color contents03 = const Color(0XFFCCCCCC);

  final Color background02 = const Color(0XFFF5F5F5);
  final Color divider = const Color(0XFFF1F1F1);

  final Color color_7E8BAB = const Color(0XFF7E8BAB);
  final Color color_FFB800 = const Color(0XFFFFB800);
  final Color color_E0E0E0 = const Color(0XFFE0E0E0);
  final Color color_9B9B9B = const Color(0XFF9B9B9B);
  final Color color_979797 = const Color(0XFF979797);
}
