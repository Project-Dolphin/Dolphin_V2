import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_businfo_data_dto.freezed.dart';
part 'response_businfo_data_dto.g.dart';

@freezed
class BusInfoData with _$BusInfoData {
  factory BusInfoData({
    String? bstopnm, // 정류장명
    @Default(0) int rpoint, // 회차 정보(0: 일반, 1: 회차 정류장)
    String? carno, // 버스 차량 번호
    @Default(0) int lowplate, // 저상 버스(0: 일반, 1: 저상 버스)
  }) = _BusInfoData;

  factory BusInfoData.fromJson(Map<String, dynamic> json) =>
      _$BusInfoDataFromJson(json);
}
