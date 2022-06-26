import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_diet_dorm_data_dto.dart';

part 'response_diet_dorm_dto.freezed.dart';
part 'response_diet_dorm_dto.g.dart';

@freezed
class DietDormWrapper with _$DietDormWrapper {
  factory DietDormWrapper({
    DormData? data,
  }) = _DietDormWrapper;

  factory DietDormWrapper.fromJson(Map<String, dynamic> json) =>
      _$DietDormWrapperFromJson(json);
}
