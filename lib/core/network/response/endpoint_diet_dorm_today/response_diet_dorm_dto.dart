import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_diet_dorm_data_dto.dart';

part 'response_diet_dorm_dto.g.dart';
part 'response_diet_dorm_dto.freezed.dart';

@freezed
class DietDormWrapper with _$DietDormWrapper {
  factory DietDormWrapper({
    DormData? data,
    String? path,
  }) = _DietDormWrapper;

  factory DietDormWrapper.fromJson(Map<String, dynamic> json) =>
      _$DietDormWrapperFromJson(json);
}
