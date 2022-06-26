import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_holiday_data_dto.dart';

part 'response_holiday_dto.freezed.dart';
part 'response_holiday_dto.g.dart';

@freezed
class HolidayWrapper with _$HolidayWrapper {
  factory HolidayWrapper({
    List<HolidayData>? data,
  }) = _HolidayWrapper;

  factory HolidayWrapper.fromJson(Map<String, dynamic> json) =>
      _$HolidayWrapperFromJson(json);
}
