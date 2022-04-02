import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_calendar_term_dto.g.dart';
part 'response_calendar_term_dto.freezed.dart';

@freezed
class CalendarTerm with _$CalendarTerm {
  factory CalendarTerm({
    String? startedAt,
    String? endedAt,
  }) = _CalendarTerm;

  factory CalendarTerm.fromJson(Map<String, dynamic> json) =>
      _$CalendarTermFromJson(json);
}
