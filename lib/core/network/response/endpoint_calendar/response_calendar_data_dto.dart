import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_calendar_term_dto.dart';

part 'response_calendar_data_dto.g.dart';
part 'response_calendar_data_dto.freezed.dart';

@freezed
class CalendarData with _$CalendarData {
  factory CalendarData({
    CalendarTerm? term,
    bool? mainPlan,
    String? content,
  }) = _CalendarData;

  factory CalendarData.fromJson(Map<String, dynamic> json) =>
      _$CalendarDataFromJson(json);
}
