import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_diet_dorm_data_dto.g.dart';
part 'response_diet_dorm_data_dto.freezed.dart';

@freezed
class DormData with _$DormData {
  factory DormData({
    List<String>? morning,
    List<String>? lunch,
    List<String>? dinner,
  }) = _DormData;

  factory DormData.fromJson(Map<String, dynamic> json) =>
      _$DormDataFromJson(json);
}
