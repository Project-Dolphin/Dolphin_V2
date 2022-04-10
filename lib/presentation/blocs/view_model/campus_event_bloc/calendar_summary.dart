import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_v2/response_calendar_data_v2_dto.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_v2/response_holiday_data_v2_dto.dart';

part 'calendar_summary.freezed.dart';
part 'calendar_summary.g.dart';

@freezed
class CalendarSumamry with _$CalendarSumamry {
  factory CalendarSumamry({
    required String content,
    @Default(false) bool holiday,
    @Default(false) bool mainPlan,
  }) = _CalendarSumamry;

  factory CalendarSumamry.fromJson(Map<String, dynamic> json) =>
      _$CalendarSumamryFromJson(json);

  factory CalendarSumamry.fromCalendarData(CalendarDataV2 data) =>
      CalendarSumamry(
        mainPlan: data.mainPlan ?? false,
        content: data.content ?? '',
        holiday: false,
      );

  factory CalendarSumamry.fromHolidayData(HolidayDataV2 data) =>
      CalendarSumamry(
        mainPlan: false,
        content: data.content ?? '',
        holiday: true,
      );
}
