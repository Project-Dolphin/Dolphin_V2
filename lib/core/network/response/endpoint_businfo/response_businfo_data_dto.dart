import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_businfo_data_dto.g.dart';
part 'response_businfo_data_dto.freezed.dart';

@freezed
class BusInfoData with _$BusInfoData {
  factory BusInfoData({
    String? carno,
    int? nodeid,
    double? lat,
    double? lin,
    int? gpsym,
    String? bstopnm,
  }) = _BusInfoData;

  factory BusInfoData.fromJson(Map<String, dynamic> json) =>
      _$BusInfoDataFromJson(json);
}
