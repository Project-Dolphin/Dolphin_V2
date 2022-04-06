import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_calendar_data_dto.dart';

part 'response_calendar_dto.freezed.dart';
part 'response_calendar_dto.g.dart';

@freezed
class CalendarWrapper with _$CalendarWrapper {
  factory CalendarWrapper({
    List<WeekdayData>? data,
    String? path,
  }) = _CalendarWrapper;

  factory CalendarWrapper.fromJson(Map<String, dynamic> json) =>
      _$CalendarWrapperFromJson(json);
}
