import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_timetable_190_data_dto.g.dart';
part 'response_timetable_190_data_dto.freezed.dart';

@freezed
class TimeTableData with _$TimeTableData {
  factory TimeTableData({
    String? type,
    String? time,
  }) = _TimeTableData;

  factory TimeTableData.fromJson(Map<String, dynamic> json) =>
      _$TimeTableDataFromJson(json);
}
