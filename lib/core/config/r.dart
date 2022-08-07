import 'package:flutter/material.dart';
import 'package:oceanview/core/config/app_colors.dart';
import 'package:oceanview/core/config/app_images.dart';
import 'package:oceanview/core/config/app_text.dart';
import 'package:oceanview/core/utils/text_utils.dart';

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
      fontFamily: 'Pretendard',
      color: color,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.light,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleLightCancelLine(
  Color color,
  double size, {
  double? height,
}) =>
    TextStyle(
      fontFamily: 'Pretendard',
      color: color,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.light,
      decoration: TextDecoration.lineThrough,
      height: height,
    );

TextStyle textStyleNormal(Color color, double size, {double? height}) =>
    TextStyle(
      fontFamily: 'Pretendard',
      color: color,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.normal,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleMedium(Color color, double size, {double? height}) =>
    TextStyle(
      fontFamily: 'Pretendard',
      color: color,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.medium,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleMediumUnderLine(
  Color color,
  double size, {
  double? height,
}) =>
    TextStyle(
      fontFamily: 'Pretendard',
      color: color,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.medium,
      decoration: TextDecoration.underline,
      height: height,
    );

TextStyle textStyle600(Color color, double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: color,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.fontWeight600,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleBold(Color color, double size, {double? height}) =>
    TextStyle(
      fontFamily: 'Pretendard',
      color: color,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.bold,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleBlackLight(double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: R.color.black,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.light,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleBlackNormal(double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: R.color.black,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.normal,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleBlackMedium(double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: R.color.black,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.medium,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleBlack600(double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: R.color.black,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.fontWeight600,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleBlackBold(double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: R.color.black,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.bold,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleWhiteLight(double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: R.color.white,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.light,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleWhiteNormal(double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: R.color.white,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.normal,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleWhiteMedium(double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: R.color.white,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.medium,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleWhite600(double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: R.color.white,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.fontWeight600,
      decoration: TextDecoration.none,
      height: height,
    );

TextStyle textStyleWhiteBold(double size, {double? height}) => TextStyle(
      fontFamily: 'Pretendard',
      color: R.color.white,
      fontSize: TextUtils.fontSize(size),
      fontWeight: R.fontWeight.bold,
      decoration: TextDecoration.none,
      height: height,
    );
