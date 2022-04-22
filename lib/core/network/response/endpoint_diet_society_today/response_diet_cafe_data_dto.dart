import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_diet_society_detail_dto.dart';

part 'response_diet_cafe_data_dto.freezed.dart';
part 'response_diet_cafe_data_dto.g.dart';

@freezed
class CafeData with _$CafeData {
  factory CafeData({
    @Default(<DietDetail>[]) List<DietDetail> student,
    @Default(<DietDetail>[]) List<DietDetail> snack,
    @Default(<DietDetail>[]) List<DietDetail> staff,
  }) = _CafeData;

  factory CafeData.fromJson(Map<String, dynamic> json) =>
      _$CafeDataFromJson(json);
}
