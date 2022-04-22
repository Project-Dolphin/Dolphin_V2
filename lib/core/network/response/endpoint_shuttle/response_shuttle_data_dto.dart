import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_shuttle_detail_dto.dart';

part 'response_shuttle_data_dto.freezed.dart';
part 'response_shuttle_data_dto.g.dart';

@freezed
class ShuttleDataDto with _$ShuttleDataDto {
  factory ShuttleDataDto({
    ShuttleDetailDto? previous,
    @Default(<ShuttleDetailDto>[]) List<ShuttleDetailDto> next,
  }) = _ShuttleDataDto;

  factory ShuttleDataDto.fromJson(Map<String, dynamic> json) =>
      _$ShuttleDataDtoFromJson(json);
}
