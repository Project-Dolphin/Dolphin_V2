import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_calendar_term_dto.dart';

part 'response_calendar_data_dto.freezed.dart';
part 'response_calendar_data_dto.g.dart';

@freezed
class WeekdayData with _$WeekdayData {
  factory WeekdayData({
    CalendarTerm? term,
    bool? mainPlan,
    @Default('') String content,
  }) = _WeekdayData;

  factory WeekdayData.fromJson(Map<String, dynamic> json) =>
      _$WeekdayDataFromJson(json);
}
