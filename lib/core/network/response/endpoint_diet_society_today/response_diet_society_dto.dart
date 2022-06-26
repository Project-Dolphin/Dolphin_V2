import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_society_detail_dto.dart';

import 'response_diet_cafe_data_dto.dart';

part 'response_diet_society_dto.freezed.dart';
part 'response_diet_society_dto.g.dart';

@freezed
class DietSocietyWrapper with _$DietSocietyWrapper {
  factory DietSocietyWrapper({
    @Default(<DietDetail>[]) List<DietDetail> student,
    @Default(<DietDetail>[]) List<DietDetail> snack,
    @Default(<DietDetail>[]) List<DietDetail> staff,
  }) = _DietSocietyWrapper;

  factory DietSocietyWrapper.fromJson(Map<String, dynamic> json) =>
      _$DietSocietyWrapperFromJson(json);
}
