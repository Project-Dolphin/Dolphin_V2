// ignore_for_file: camel_case_types

enum BUS_STOP {
  BUSAN_STATION('부산역', 'busan_station'),
  YEONGDO_BRIDGE('영도대교', 'yeongdo_bridge'),
  KMOH_MAIN('한국해양대.해사고', 'kmou_high'),
  KMOU_MAIN('해양대구본관', 'kmou_main'),
  KMOU_ENTRANCE('해양대 입구', 'kmou_entrance');

  final String stopName;
  final String paramName;
  const BUS_STOP(this.stopName, this.paramName);
}
