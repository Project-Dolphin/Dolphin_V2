import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_depart_bus_info_dto.freezed.dart';
part 'response_depart_bus_info_dto.g.dart';

@freezed
class DepartBusInfo with _$DepartBusInfo {
  factory DepartBusInfo({
    String? bus, // 190 출발 시간
    int? remainMinutes, // 출발까지 남은 시간(분)
  }) = _DepartBusInfo;

  factory DepartBusInfo.fromJson(Map<String, dynamic> json) =>
      _$DepartBusInfoFromJson(json);
}
