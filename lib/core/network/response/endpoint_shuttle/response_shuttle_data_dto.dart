import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_shuttle_detail_dto.dart';

part 'response_shuttle_data_dto.freezed.dart';
part 'response_shuttle_data_dto.g.dart';

@freezed
class ShuttleDataDto with _$ShuttleDataDto {
  factory ShuttleDataDto({
    String? destination, // 목적지 ("하리" | "동삼시장")
    String? time, // 셔틀 출발 시간
    int? remainMinutes, // 출발까지 남은 시간(분)
  }) = _ShuttleDataDto;

  factory ShuttleDataDto.fromJson(Map<String, dynamic> json) =>
      _$ShuttleDataDtoFromJson(json);
}
