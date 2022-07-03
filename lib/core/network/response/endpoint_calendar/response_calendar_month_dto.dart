import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_calendar_data_dto.dart';

part 'response_calendar_month_dto.freezed.dart';
part 'response_calendar_month_dto.g.dart';

@freezed
class CalendarMonthWrapper with _$CalendarMonthWrapper {
  factory CalendarMonthWrapper({
    String? title,
    @Default(<WeekdayData>[]) List<WeekdayData> calendar,
    // int? year,
    // int? month,
    // @Default(<WeekdayData>[]) List<WeekdayData> data,
  }) = _CalendarMonthWrapper;

  factory CalendarMonthWrapper.fromJson(Map<String, dynamic> json) =>
      _$CalendarMonthWrapperFromJson(json);
}
