import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_calendar_latest_data_dto.dart';

part 'response_calendar_latest_dto.freezed.dart';
part 'response_calendar_latest_dto.g.dart';

@freezed
class LatestWrapper with _$LatestWrapper {
  factory LatestWrapper({
    List<LatestData>? data,
  }) = _LatestWrapper;

  factory LatestWrapper.fromJson(Map<String, dynamic> json) =>
      _$LatestWrapperFromJson(json);
}
