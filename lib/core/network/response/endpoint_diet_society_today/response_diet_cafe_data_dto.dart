import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_diet_society_detail_dto.dart';

part 'response_diet_cafe_data_dto.freezed.dart';
part 'response_diet_cafe_data_dto.g.dart';

@freezed
class CafeData with _$CafeData {
  factory CafeData({
    List<DietDetail>? student,
    List<DietDetail>? snack,
    List<DietDetail>? staff,
  }) = _CafeData;

  factory CafeData.fromJson(Map<String, dynamic> json) =>
      _$CafeDataFromJson(json);
}
