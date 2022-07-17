import 'package:flutter/material.dart';
import 'package:oceanview/core/config/app_colors.dart';
import 'package:oceanview/core/config/app_images.dart';
import 'package:oceanview/core/config/app_text.dart';

class R {
  static AppColors get color => AppColors();

  static AppImages get image => AppImages();

  static AppFontWeight get fontWeight => AppFontWeight();

  static AppTexts get string => AppTexts();
}

class AppFontWeight {
  static const AppFontWeight _instance = AppFontWeight._internal();

  factory AppFontWeight() => _instance;

  const AppFontWeight._internal();

  final FontWeight light = FontWeight.w200;

  final FontWeight normal = FontWeight.normal;

  final FontWeight medium = FontWeight.w500;

  final FontWeight fontWeight600 = FontWeight.w600;

  final FontWeight bold = FontWeight.bold;
}

TextStyle textStyleLight(Color color, double size, {double? height}) =>
    TextStyle(
      color: color,
      fontSize: size,
      fontWeight: R.fontWeight.light,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleLightCancelLine(
  Color color,
  double size, {
  double? height,
}) =>
    TextStyle(
      color: color,
      fontSize: size,
      fontWeight: R.fontWeight.light,
      decoration: TextDecoration.lineThrough,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleNormal(Color color, double size, {double? height}) =>
    TextStyle(
      color: color,
      fontSize: size,
      fontWeight: R.fontWeight.normal,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleMedium(Color color, double size, {double? height}) =>
    TextStyle(
      color: color,
      fontSize: size,
      fontWeight: R.fontWeight.medium,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleMediumUnderLine(
  Color color,
  double size, {
  double? height,
}) =>
    TextStyle(
      color: color,
      fontSize: size,
      fontWeight: R.fontWeight.medium,
      decoration: TextDecoration.underline,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyle600(Color color, double size, {double? height}) => TextStyle(
      color: color,
      fontSize: size,
      fontWeight: R.fontWeight.fontWeight600,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleBold(Color color, double size, {double? height}) =>
    TextStyle(
      color: color,
      fontSize: size,
      fontWeight: R.fontWeight.bold,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleBlackLight(double size, {double? height}) => TextStyle(
      color: R.color.black,
      fontSize: size,
      fontWeight: R.fontWeight.light,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleBlackNormal(double size, {double? height}) => TextStyle(
      color: R.color.black,
      fontSize: size,
      fontWeight: R.fontWeight.normal,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleBlackMedium(double size, {double? height}) => TextStyle(
      color: R.color.black,
      fontSize: size,
      fontWeight: R.fontWeight.medium,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleBlack600(double size, {double? height}) => TextStyle(
      color: R.color.black,
      fontSize: size,
      fontWeight: R.fontWeight.fontWeight600,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleBlackBold(double size, {double? height}) => TextStyle(
      color: R.color.black,
      fontSize: size,
      fontWeight: R.fontWeight.bold,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleWhiteLight(double size, {double? height}) => TextStyle(
      color: R.color.white,
      fontSize: size,
      fontWeight: R.fontWeight.light,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleWhiteNormal(double size, {double? height}) => TextStyle(
      color: R.color.white,
      fontSize: size,
      fontWeight: R.fontWeight.normal,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleWhiteMedium(double size, {double? height}) => TextStyle(
      color: R.color.white,
      fontSize: size,
      fontWeight: R.fontWeight.medium,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleWhite600(double size, {double? height}) => TextStyle(
      color: R.color.white,
      fontSize: size,
      fontWeight: R.fontWeight.fontWeight600,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );

TextStyle textStyleWhiteBold(double size, {double? height}) => TextStyle(
      color: R.color.white,
      fontSize: size,
      fontWeight: R.fontWeight.bold,
      decoration: TextDecoration.none,
      height: height,
      fontFamily: 'Pretendard',
    );
