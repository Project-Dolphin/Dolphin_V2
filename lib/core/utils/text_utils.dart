import 'package:flutter/material.dart';

class TextUtils {
  static final TextUtils _instance = TextUtils._internal();
  static List<int> messageIdList = [];
  static BuildContext? context;

  factory TextUtils() => _instance;

  TextUtils._internal();

  static void init(BuildContext initContext) {
    context = initContext;
  }

  static double fontSize(double size) {
    return size * (MediaQuery.of(context!).size.height / 800);
  }
}
