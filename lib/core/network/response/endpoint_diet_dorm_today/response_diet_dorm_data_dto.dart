import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_diet_dorm_data_dto.freezed.dart';
part 'response_diet_dorm_data_dto.g.dart';

@freezed
class DormData with _$DormData {
  factory DormData({
    @Default(<String>[]) List<String> morning,
    @Default(<String>[]) List<String> lunch,
    @Default(<String>[]) List<String> dinner,
  }) = _DormData;

  factory DormData.fromJson(Map<String, dynamic> json) =>
      _$DormDataFromJson(json);
}
