import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_timetable_190_data_dto.dart';

part 'response_timetable_190_dto.g.dart';
part 'response_timetable_190_dto.freezed.dart';

@freezed
class TimeTable190Wrapper with _$TimeTable190Wrapper {
  factory TimeTable190Wrapper({
    List<TimeTableData>? data,
    String? path,
  }) = _TimeTable190Wrapper;

  factory TimeTable190Wrapper.fromJson(Map<String, dynamic> json) =>
      _$TimeTable190WrapperFromJson(json);
}
