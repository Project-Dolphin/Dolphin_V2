import 'package:flutter/material.dart';

class AppTheme {
  //Change Font Family Default
  static const fontFamily = 'Pretendard';

  AppTheme._();

  //TODO: CHANGE LIGHT THEME COLOR SCHEME
  static final light = ThemeData.light().copyWith(
    scaffoldBackgroundColor: const Color(0xFFF2F3F7),
    backgroundColor: const Color(0xFFF2F3F7),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    canvasColor: const Color(0xFFFFFFFF),
    shadowColor: const Color(0xFF3E9EF6),
    primaryColor: const Color(0xFF0081FF),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF4BA7FF),
      // 폰트 컬러로 사용할까 생각 중 - 2022.04.16 김덕현
      onPrimary: Color(0xFF353B45),
      onPrimaryContainer: Colors.purple,
      secondary: Color(0xFFD9EDFF),
      onSecondary: Color(0xFF353B45),
      error: Colors.red,
      onError: Colors.red,
      background: Color(0xFFEAF5FF),
      onBackground: Colors.red,
      surface: Color(0xFFCECECE),
      onSurface: Colors.red,
    ),
    bottomAppBarColor: const Color(0xFFFFFFFF),
    buttonColor: Color(0xFFACACAC).withOpacity(.3),
  );

  // ignore: todo
  //TODO: CHANGE DARK THEME COLOR SCHEME
  static final dark = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: const Color(0xFF17171B),
    backgroundColor: const Color(0xFF17171B),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    canvasColor: const Color(0xFF2C2C34),
    shadowColor: const Color(0xFF3E9EF6),
    primaryColor: const Color(0xFF0081FF),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF4BA7FF),
      // 폰트 컬러로 사용할까 생각 중 - 2022.04.16 김덕현
      onPrimary: Color(0xFFE9EEF7),
      onPrimaryContainer: Colors.purple,
      secondary: Color(0xFFBBDAFF),
      onSecondary: Color(0xFFFFFFFF),
      error: Colors.red,
      onError: Colors.red,
      background: Color(0xFF5A5A5A),
      onBackground: Colors.red,
      surface: Color(0xFF4E4E4E),
      onSurface: Colors.red,
    ),
    bottomAppBarColor: const Color(0xFF17171B),
    buttonColor: Color(0xFFACACAC).withOpacity(.3),
  );
}

class NavigationBarTheme {
  Color? backgroundColor,
      selectedItemIconColor,
      selectedItemTextColor,
      selectedItemColor,
      selectedOverlayColor,
      unselectedItemIconColor,
      unselectedItemTextColor,
      unselectedItemColor;
}
