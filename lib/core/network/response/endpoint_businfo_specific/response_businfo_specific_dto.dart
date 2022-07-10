import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oceanview/core/network/response/endpoint_businfo/response_businfo_data_dto.dart';

part 'response_businfo_specific_dto.freezed.dart';
part 'response_businfo_specific_dto.g.dart';

@freezed
class SpecificBusInfoWrapper with _$SpecificBusInfoWrapper {
  factory SpecificBusInfoWrapper({
    String? busNumber,
    @Default(<BusInfoData>[]) List<BusInfoData> busStopInfo,
  }) = _SpecificBusInfoWrapper;

  factory SpecificBusInfoWrapper.fromJson(Map<String, dynamic> json) =>
      _$SpecificBusInfoWrapperFromJson(json);
}
