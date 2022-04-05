import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_shuttle_detail_dto.freezed.dart';
part 'response_shuttle_detail_dto.g.dart';

@freezed
class ShuttleDetailDto with _$ShuttleDetailDto {
  factory ShuttleDetailDto({
    String? type,
    String? time,
  }) = _ShuttleDetailDto;

  factory ShuttleDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ShuttleDetailDtoFromJson(json);
}
