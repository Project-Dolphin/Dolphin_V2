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

  final String morning = '아침';
  final String lunch = '점심';
  final String dinner = '저녁';
  final String dorm = '기숙사';
  final String navy = '해사대';

  final String website = '학교 주요 홈페이지';
  final String phone = '학교 사무실 전화번호';
  final String library = '도서관 홈페이지';
  final String setting = '앱 설정';
  final String developer = '앱 및 개발자 정보';
  final String errorSend = '오류 제보';
}
