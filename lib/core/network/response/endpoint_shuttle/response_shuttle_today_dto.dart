import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_shuttle_detail_dto.dart';

part 'response_shuttle_today_dto.freezed.dart';
part 'response_shuttle_today_dto.g.dart';

@freezed
class ShuttleTodayWrapper with _$ShuttleTodayWrapper {
  factory ShuttleTodayWrapper({
    @Default(<ShuttleDetailDto>[]) List<ShuttleDetailDto> data,
  }) = _ShuttleTodayWrapper;

  factory ShuttleTodayWrapper.fromJson(Map<String, dynamic> json) =>
      _$ShuttleTodayWrapperFromJson(json);
}
