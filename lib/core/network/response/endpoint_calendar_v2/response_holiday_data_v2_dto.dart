import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_holiday_data_v2_dto.freezed.dart';
part 'response_holiday_data_v2_dto.g.dart';

@freezed
class HolidayDataV2 with _$HolidayDataV2 {
  factory HolidayDataV2({
    String? term,
    String? content,
  }) = _HolidayDataV2;

  factory HolidayDataV2.fromJson(Map<String, dynamic> json) =>
      _$HolidayDataV2FromJson(json);
}
