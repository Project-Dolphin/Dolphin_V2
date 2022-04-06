import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_diet_cafe_data_dto.dart';

part 'response_diet_society_dto.freezed.dart';
part 'response_diet_society_dto.g.dart';

@freezed
class DietSocietyWrapper with _$DietSocietyWrapper {
  factory DietSocietyWrapper({
    CafeData? data,
    String? path,
  }) = _DietSocietyWrapper;

  factory DietSocietyWrapper.fromJson(Map<String, dynamic> json) =>
      _$DietSocietyWrapperFromJson(json);
}
