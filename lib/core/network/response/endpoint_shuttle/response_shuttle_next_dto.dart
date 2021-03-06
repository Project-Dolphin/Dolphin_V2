import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_shuttle_data_dto.dart';

part 'response_shuttle_next_dto.freezed.dart';
part 'response_shuttle_next_dto.g.dart';

@freezed
class ShuttleNextWrapper with _$ShuttleNextWrapper {
  factory ShuttleNextWrapper({
    @Default(<ShuttleDataDto>[]) List<ShuttleDataDto> nextShuttle,
  }) = _ShuttleNextWrapper;

  factory ShuttleNextWrapper.fromJson(Map<String, dynamic> json) =>
      _$ShuttleNextWrapperFromJson(json);
}
