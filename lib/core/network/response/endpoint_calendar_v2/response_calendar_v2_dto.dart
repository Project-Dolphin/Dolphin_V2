import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_calendar_data_v2_dto.dart';

part 'response_calendar_v2_dto.freezed.dart';
part 'response_calendar_v2_dto.g.dart';

@freezed
class CalendarV2Wrapper with _$CalendarV2Wrapper {
  factory CalendarV2Wrapper({
    List<CalendarDataV2>? data,
    String? path,
  }) = _CalendarV2Wrapper;

  factory CalendarV2Wrapper.fromJson(Map<String, dynamic> json) =>
      _$CalendarV2WrapperFromJson(json);
}
