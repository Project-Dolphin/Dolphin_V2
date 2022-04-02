class AppTexts {
  static final AppTexts _instance = AppTexts._internal();

  factory AppTexts() => _instance;

  AppTexts._internal();

  final String home = '홈';
  final String bus = '버스';
  final String diet = '식단';
  final String calenadr = '일정';
  final String menu = '메뉴';

  final String weekday = '평일';
  final String weekend = '주말';
  final String test = '시험기간';
}
