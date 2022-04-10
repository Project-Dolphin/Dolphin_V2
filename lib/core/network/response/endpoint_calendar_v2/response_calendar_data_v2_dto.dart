import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_calendar_data_v2_dto.freezed.dart';
part 'response_calendar_data_v2_dto.g.dart';

@freezed
class CalendarDataV2 with _$CalendarDataV2 {
  factory CalendarDataV2({
    String? term,
    bool? mainPlan,
    String? content,
  }) = _CalendarDataV2;

  factory CalendarDataV2.fromJson(Map<String, dynamic> json) =>
      _$CalendarDataV2FromJson(json);
}
