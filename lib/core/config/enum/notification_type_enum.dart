// ignore_for_file: camel_case_types

enum NOTIFICATION_TYPE {
  CANCLE('알람이 취소됨'),
  BUS('버스가 도착하기 3분전에 알림이 와요'),
  EVENT('일정 당일 오전 9시에 알림이 와요');

  final String notiMessage;
  const NOTIFICATION_TYPE(this.notiMessage);
}
