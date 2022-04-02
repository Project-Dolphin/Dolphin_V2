import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_holiday_term_dto.dart';

part 'response_holiday_data_dto.g.dart';
part 'response_holiday_data_dto.freezed.dart';

@freezed
class HolidayData with _$HolidayData {
  factory HolidayData({
    HolidayTerm? term,
    String? content,
  }) = _HolidayData;

  factory HolidayData.fromJson(Map<String, dynamic> json) =>
      _$HolidayDataFromJson(json);
}
