import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_depart_bus_info_dto.dart';

part 'response_next_depart_190_dto.freezed.dart';
part 'response_next_depart_190_dto.g.dart';

@freezed
class NextDepart190Wrapper with _$NextDepart190Wrapper {
  factory NextDepart190Wrapper({
    List<DepartBusInfo>? nextDepartBus,
    String? path,
  }) = _NextDepart190Wrapper;

  factory NextDepart190Wrapper.fromJson(Map<String, dynamic> json) =>
      _$NextDepart190WrapperFromJson(json);
}
