import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_businfo_specific_data_dto.g.dart';
part 'response_businfo_specific_data_dto.freezed.dart';

@freezed
class NodeInfoData with _$NodeInfoData {
  factory NodeInfoData({
    String? carNo1,
    String? carNo2,
    int? min1,
    int? min2,
    int? station1,
    int? station2,
    bool? lowplate1,
    bool? lowplate2,
  }) = _NodeInfoData;

  factory NodeInfoData.fromJson(Map<String, dynamic> json) =>
      _$NodeInfoDataFromJson(json);
}
