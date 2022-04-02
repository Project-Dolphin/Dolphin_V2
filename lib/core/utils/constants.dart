// ignore_for_file: constant_identifier_names
class AppConstants {
  /*
  개발용 BASE_URL
  추후 flavor 도입 후 추출 예정
  */
  static const String API_BASE_URL =
      'https://x4hvqlt6g5.execute-api.ap-northeast-2.amazonaws.com/prod/'; // add the base url here

  // 에러메세지
  static const String NO_CONNECTION_ERROR =
      'You are not connected to the Internet';

  // default side padding
  static const double DEFAULT_PAGE_PADDING = 20;

  //routes
  static const String HOME_ROUTE = '/';
  static const String SETTING_ROUTE = '/change_password';
  static const String DEVELOPER_INTRO_ROUTE = '/change_password';
}
