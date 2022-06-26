import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_diet_dorm_data_dto.dart';

part 'response_diet_dorm_dto.freezed.dart';
part 'response_diet_dorm_dto.g.dart';

@freezed
class DietDormWrapper with _$DietDormWrapper {
  factory DietDormWrapper({
    @Default(<String>[]) List<String> morning,
    @Default(<String>[]) List<String> lunch,
    @Default(<String>[]) List<String> dinner,
  }) = _DietDormWrapper;

  factory DietDormWrapper.fromJson(Map<String, dynamic> json) =>
      _$DietDormWrapperFromJson(json);
}
