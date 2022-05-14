import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_info.freezed.dart';
part 'station_info.g.dart';

@freezed
class StationInfo with _$StationInfo {
  factory StationInfo({
    @Default('부산역') String nearStation,
    @Default('169100201') String nodeId,
  }) = _StationInfo;

  factory StationInfo.fromJson(Map<String, dynamic> json) =>
      _$StationInfoFromJson(json);
}
