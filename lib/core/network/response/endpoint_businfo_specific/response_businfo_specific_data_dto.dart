import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_businfo_specific_data_dto.freezed.dart';
part 'response_businfo_specific_data_dto.g.dart';

@freezed
class NodeInfoData with _$NodeInfoData {
  factory NodeInfoData({
    String? busStopName,
    int? min1,
    int? min2,
    String? lineno,
  }) = _NodeInfoData;

  factory NodeInfoData.fromJson(Map<String, dynamic> json) =>
      _$NodeInfoDataFromJson(json);
}
