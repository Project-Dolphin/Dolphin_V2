import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Change Font Family Default
  static const fontFamily = GoogleFonts.roboto;

  AppTheme._();

  static FontWeight _getFontWeight(int weight) {
    switch (weight) {
      case 100:
        return FontWeight.w100;
      case 200:
        return FontWeight.w200;
      case 300:
        return FontWeight.w300;
      case 400:
        return FontWeight.w300;
      case 500:
        return FontWeight.w400;
      case 600:
        return FontWeight.w500;
      case 700:
        return FontWeight.w600;
      case 800:
        return FontWeight.w700;
      case 900:
        return FontWeight.w900;
    }
    return FontWeight.w400;
  }

  static TextStyle getTextStyle(TextStyle textStyle,
      {int fontWeight = 500,
      bool muted = false,
      bool xMuted = false,
      double letterSpacing = 0.15,
      Color color = Colors.black,
      TextDecoration decoration = TextDecoration.none,
      double? height,
      double wordSpacing = 0,
      double? fontSize}) {
    double? finalFontSize = fontSize ?? textStyle.fontSize;

    Color finalColor;
    finalColor = (xMuted
        ? textStyle.color!.withAlpha(160)
        : (muted ? textStyle.color!.withAlpha(200) : textStyle.color))!;

    return fontFamily(
        fontSize: finalFontSize,
        fontWeight: _getFontWeight(fontWeight),
        letterSpacing: letterSpacing,
        color: finalColor,
        decoration: decoration,
        height: height,
        wordSpacing: wordSpacing);
  }

  // ignore: todo
  //TODO :CHANGE APPBAR THEME (LIGHT SCHEME)
  static final TextTheme lightAppBarTextTheme = TextTheme(
    headline1: fontFamily(
        textStyle: const TextStyle(fontSize: 102, color: Color(0xff495057))),
    headline2: fontFamily(
        textStyle: const TextStyle(fontSize: 64, color: Color(0xff495057))),
    headline3: fontFamily(
        textStyle: const TextStyle(fontSize: 51, color: Color(0xff495057))),
    headline4: fontFamily(
        textStyle: const TextStyle(fontSize: 36, color: Color(0xff495057))),
    headline5: fontFamily(
        textStyle: const TextStyle(fontSize: 25, color: Color(0xff495057))),
    headline6: fontFamily(
        textStyle: const TextStyle(fontSize: 18, color: Color(0xff495057))),
    subtitle1: fontFamily(
        textStyle: const TextStyle(fontSize: 17, color: Color(0xff495057))),
    subtitle2: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff495057))),
    bodyText1: fontFamily(
        textStyle: const TextStyle(fontSize: 16, color: Color(0xff495057))),
    bodyText2: fontFamily(
        textStyle: const TextStyle(fontSize: 14, color: Color(0xff495057))),
    button: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff495057))),
    caption: fontFamily(
        textStyle: const TextStyle(fontSize: 13, color: Color(0xff495057))),
    overline: fontFamily(
        textStyle: const TextStyle(fontSize: 11, color: Color(0xff495057))),
  );

  // ignore: todo
  //TODO :CHANGE APPBAR THEME (DARK SCHEME)
  static final TextTheme darkAppBarTextTheme = TextTheme(
    headline1: fontFamily(
        textStyle: const TextStyle(fontSize: 102, color: Color(0xff495057))),
    headline2: fontFamily(
        textStyle: const TextStyle(fontSize: 64, color: Color(0xff495057))),
    headline3: fontFamily(
        textStyle: const TextStyle(fontSize: 51, color: Color(0xff495057))),
    headline4: fontFamily(
        textStyle: const TextStyle(fontSize: 36, color: Color(0xff495057))),
    headline5: fontFamily(
        textStyle: const TextStyle(fontSize: 25, color: Color(0xff495057))),
    headline6: fontFamily(
        textStyle: const TextStyle(fontSize: 18, color: Color(0xff495057))),
    subtitle1: fontFamily(
        textStyle: const TextStyle(fontSize: 17, color: Color(0xff495057))),
    subtitle2: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff495057))),
    bodyText1: fontFamily(
        textStyle: const TextStyle(fontSize: 16, color: Color(0xff495057))),
    bodyText2: fontFamily(
        textStyle: const TextStyle(fontSize: 14, color: Color(0xff495057))),
    button: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff495057))),
    caption: fontFamily(
        textStyle: const TextStyle(fontSize: 13, color: Color(0xff495057))),
    overline: fontFamily(
        textStyle: const TextStyle(fontSize: 11, color: Color(0xff495057))),
  );

  // ignore: todo
  //TODO :CHANGE TEXT THEME (LIGHT SCHEME)
  static final TextTheme lightTextTheme = TextTheme(
    headline1: fontFamily(
        textStyle: const TextStyle(fontSize: 102, color: Color(0xff4a4c4f))),
    headline2: fontFamily(
        textStyle: const TextStyle(fontSize: 64, color: Color(0xff4a4c4f))),
    headline3: fontFamily(
        textStyle: const TextStyle(fontSize: 51, color: Color(0xff4a4c4f))),
    headline4: fontFamily(
        textStyle: const TextStyle(fontSize: 36, color: Color(0xff4a4c4f))),
    headline5: fontFamily(
        textStyle: const TextStyle(fontSize: 25, color: Color(0xff4a4c4f))),
    headline6: fontFamily(
        textStyle: const TextStyle(fontSize: 18, color: Color(0xff4a4c4f))),
    subtitle1: fontFamily(
        textStyle: const TextStyle(fontSize: 17, color: Color(0xff4a4c4f))),
    subtitle2: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Color(0xff4a4c4f))),
    bodyText1: fontFamily(
        textStyle: const TextStyle(fontSize: 16, color: Color(0xff4a4c4f))),
    bodyText2: fontFamily(
        textStyle: const TextStyle(fontSize: 14, color: Color(0xff4a4c4f))),
    button: fontFamily(
        textStyle: const TextStyle(
            fontSize: 15, color: Colors.black)), //Color(0xff4a4c4f))),
    caption: fontFamily(
        textStyle: const TextStyle(fontSize: 13, color: Color(0xff4a4c4f))),
    overline: fontFamily(
        textStyle: const TextStyle(fontSize: 11, color: Color(0xff4a4c4f))),
  );

  // ignore: todo
  //TODO :CHANGE TEXT THEME (DARK SCHEME)
  static final TextTheme darkTextTheme = TextTheme(
    headline1: fontFamily(
        textStyle: const TextStyle(fontSize: 102, color: Colors.white)),
    headline2: fontFamily(
        textStyle: const TextStyle(fontSize: 64, color: Colors.white)),
    headline3: fontFamily(
        textStyle: const TextStyle(fontSize: 51, color: Colors.white)),
    headline4: fontFamily(
        textStyle: const TextStyle(fontSize: 36, color: Colors.white)),
    headline5: fontFamily(
        textStyle: const TextStyle(fontSize: 25, color: Colors.white)),
    headline6: fontFamily(
        textStyle: const TextStyle(fontSize: 18, color: Colors.white)),
    subtitle1: fontFamily(
        textStyle: const TextStyle(fontSize: 17, color: Colors.white)),
    subtitle2: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Colors.white)),
    bodyText1: fontFamily(
        textStyle: const TextStyle(fontSize: 16, color: Colors.white)),
    bodyText2: fontFamily(
        textStyle: const TextStyle(fontSize: 14, color: Colors.white)),
    button: fontFamily(
        textStyle: const TextStyle(fontSize: 15, color: Colors.white)),
    caption: fontFamily(
        textStyle: const TextStyle(fontSize: 13, color: Colors.white)),
    overline: fontFamily(
        textStyle: const TextStyle(fontSize: 11, color: Colors.white)),
  );

  // ignore: todo
  //TODO: CHANGE LIGHT THEME COLOR SCHEME
  static final light = ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: Colors.white, //const Color(0xFFfff5d7),
      primaryColorLight: Colors.grey[300],
      canvasColor: const Color(0xffF6F6F6),
      backgroundColor: Colors.white,
      primaryColorDark: Colors.black,
      scaffoldBackgroundColor: Colors.white, //const Color(0xFFfff5d7),
      shadowColor: Colors.black.withOpacity(0.06),
      appBarTheme: const AppBarTheme(
        actionsIconTheme: IconThemeData(
          color: Color(0xffffffff),
        ),
        color: Color(0xff2e343b),
        iconTheme: IconThemeData(color: Color(0xffffffff), size: 24),
      ),
      navigationRailTheme: const NavigationRailThemeData(
          selectedIconTheme:
              IconThemeData(color: Color(0xFF27ae61), opacity: 1, size: 24),
          unselectedIconTheme:
              IconThemeData(color: Color(0xff495057), opacity: 1, size: 24),
          backgroundColor: Color(0xffffffff),
          elevation: 3,
          selectedLabelTextStyle: TextStyle(color: Color(0xFF27ae61)),
          unselectedLabelTextStyle: TextStyle(color: Color(0xff495057))),
      colorScheme: const ColorScheme.light(
          primary: Colors.white,
          onPrimary: Colors.white,
          primaryContainer: Color(0xFF3aa668),
          secondary: Color(0xff495057),
          secondaryContainer: Color(0xff3cd278),
          onSecondary: Colors.white,
          surface: Color(0xffe2e7f1),
          background: Color(0xfff3f4f7),
          onBackground: Color(0xff495057)),
      cardTheme: CardTheme(
        color: Colors.white,
        shadowColor: Colors.black.withOpacity(0.4),
        elevation: 1,
        margin: const EdgeInsets.all(0),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(fontSize: 15, color: Color(0xaa495057)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide:
              BorderSide(width: 1, color: Colors.black87), //Color(0xFF27ae61)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Colors.black26),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: Colors.black26)),
      ),
      splashColor: Colors.white.withAlpha(100),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      textTheme: lightTextTheme.apply(fontSizeFactor: 1.0),
      indicatorColor: Colors.black,
      disabledColor: const Color(0xffdcc7ff),
      highlightColor: Colors.white,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: const Color(0xFF27ae61),
          splashColor: Colors.white.withAlpha(100),
          highlightElevation: 8,
          elevation: 4,
          focusColor: const Color(0xFF27ae61),
          hoverColor: const Color(0xFF27ae61),
          foregroundColor: Colors.white),
      dividerColor: const Color(0xffd1d1d1),
      errorColor: const Color(0xfff0323c),
      cardColor: Colors.white,
      popupMenuTheme: PopupMenuThemeData(
        color: const Color(0xffffffff),
        textStyle: lightTextTheme.bodyText2!
            .merge(const TextStyle(color: Color(0xff495057))),
      ),
      bottomAppBarTheme:
          const BottomAppBarTheme(color: Color(0xffffffff), elevation: 2),
      tabBarTheme: const TabBarTheme(
        unselectedLabelColor: Color(0xff495057),
        labelColor: Colors.black, //Color(0xFF27ae61),
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: const Color(0xFF27ae61),
        inactiveTrackColor: const Color(0xFF27ae61).withAlpha(140),
        trackShape: const RoundedRectSliderTrackShape(),
        trackHeight: 4.0,
        thumbColor: const Color(0xFF27ae61),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10.0),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 24.0),
        tickMarkShape: const RoundSliderTickMarkShape(),
        inactiveTickMarkColor: Colors.red[100],
        valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: const Color(0xffFFFFFF),
        hourMinuteShape: const RoundedRectangleBorder(
          // 큰 시간과 분 박스
          borderRadius: BorderRadius.all(Radius.circular(8)),
          side: BorderSide(color: Colors.grey, width: 1),
        ),
        dayPeriodBorderSide: const BorderSide(color: Colors.black, width: 1),
        // 오전 오후 박스 테두리
        dayPeriodColor: Colors.white,
        // 오전 오후 박스 내부 색상
        shape: const RoundedRectangleBorder(
          // 제일 바깥 사이드
          borderRadius: BorderRadius.all(Radius.circular(8)),
          side: BorderSide(color: Colors.transparent, width: 1),
        ),
        dayPeriodTextColor: const Color(0xff3F51B5),
        dayPeriodShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          side: BorderSide(color: Colors.orange, width: 4),
        ),
        hourMinuteColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.selected)
                ? Colors.indigo
                : Colors.white),
        // 제일 큰 박스 내부의 색
        hourMinuteTextColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.selected)
                ? Colors.white
                : Colors.indigo),
        // 제일 큰 시간, 분 박스의 텍스트 색
        dialHandColor: Colors.indigo,
        dialBackgroundColor: Colors.grey[400],
        hourMinuteTextStyle:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        dayPeriodTextStyle:
            const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        helpTextStyle: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
        // 최상단 시간 선택 텍스트
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(0),
        ),
        dialTextColor: MaterialStateColor.resolveWith((states) =>
            states.contains(MaterialState.selected)
                ? Colors.black
                : Colors.white),
        // 다이얼 내부 텍스트
        entryModeIconColor: Colors.indigo,
      ));

  // ignore: todo
  //TODO: CHANGE DARK THEME COLOR SCHEME
  static final dark = ThemeData.dark().copyWith();
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
