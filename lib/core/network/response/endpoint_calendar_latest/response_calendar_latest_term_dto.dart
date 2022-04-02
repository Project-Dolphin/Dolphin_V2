import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_calendar_latest_term_dto.g.dart';
part 'response_calendar_latest_term_dto.freezed.dart';

@freezed
class LatestTerm with _$LatestTerm {
  factory LatestTerm({
    String? startedAt,
    String? endedAt,
  }) = _LatestTerm;

  factory LatestTerm.fromJson(Map<String, dynamic> json) =>
      _$LatestTermFromJson(json);
}
