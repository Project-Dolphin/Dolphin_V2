import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_calendar_term_dto.freezed.dart';
part 'response_calendar_term_dto.g.dart';

@freezed
class CalendarTerm with _$CalendarTerm {
  factory CalendarTerm({
    required String startedAt,
    required String endedAt,
  }) = _CalendarTerm;

  factory CalendarTerm.fromJson(Map<String, dynamic> json) =>
      _$CalendarTermFromJson(json);
}
