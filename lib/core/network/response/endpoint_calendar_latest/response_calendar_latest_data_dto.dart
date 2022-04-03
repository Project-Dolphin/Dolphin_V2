import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_calendar_latest_term_dto.dart';

part 'response_calendar_latest_data_dto.g.dart';
part 'response_calendar_latest_data_dto.freezed.dart';

@freezed
class LatestData with _$LatestData {
  factory LatestData({
    LatestTerm? term,
    bool? mainPlan,
    String? content,
    int? dDay,
  }) = _LatestData;

  factory LatestData.fromJson(Map<String, dynamic> json) =>
      _$LatestDataFromJson(json);
}
