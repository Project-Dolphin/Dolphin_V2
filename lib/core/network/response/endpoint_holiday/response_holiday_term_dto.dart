import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_holiday_term_dto.g.dart';
part 'response_holiday_term_dto.freezed.dart';

@freezed
class HolidayTerm with _$HolidayTerm {
  factory HolidayTerm({
    String? startedAt,
    String? endedAt,
  }) = _HolidayTerm;

  factory HolidayTerm.fromJson(Map<String, dynamic> json) =>
      _$HolidayTermFromJson(json);
}
