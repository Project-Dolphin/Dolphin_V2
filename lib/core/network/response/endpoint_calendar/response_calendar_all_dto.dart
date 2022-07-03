import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_calendar_data_dto.dart';

part 'response_calendar_all_dto.freezed.dart';
part 'response_calendar_all_dto.g.dart';

@freezed
class CalendarAllWrapper with _$CalendarAllWrapper {
  factory CalendarAllWrapper({
    String? title,
    @Default(<WeekdayData>[]) List<WeekdayData> calendar,
  }) = _CalendarAllWrapper;

  factory CalendarAllWrapper.fromJson(Map<String, dynamic> json) =>
      _$CalendarAllWrapperFromJson(json);
}
