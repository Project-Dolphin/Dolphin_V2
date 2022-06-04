import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_businfo_data_dto.dart';

part 'response_businfo_dto.freezed.dart';
part 'response_businfo_dto.g.dart';

@freezed
class BusInfoWrapper with _$BusInfoWrapper {
  factory BusInfoWrapper({
    List<BusInfoData>? busStopInfo,
    String? busNumber,
    String? path,
  }) = _BusInfoWrapper;

  factory BusInfoWrapper.fromJson(Map<String, dynamic> json) =>
      _$BusInfoWrapperFromJson(json);
}
