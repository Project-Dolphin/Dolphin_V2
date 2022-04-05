import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_diet_society_detail_dto.dart';

part 'response_diet_society_data_dto.freezed.dart';
part 'response_diet_society_data_dto.g.dart';

@freezed
class DietData with _$DietData {
  factory DietData({
    List<DietDetail>? student,
    List<DietDetail>? snack,
    List<DietDetail>? staff,
  }) = _DietData;

  factory DietData.fromJson(Map<String, dynamic> json) =>
      _$DietDataFromJson(json);
}
