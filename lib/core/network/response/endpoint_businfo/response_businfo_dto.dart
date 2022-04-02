import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_businfo_data_dto.dart';

part 'response_businfo_dto.g.dart';
part 'response_businfo_dto.freezed.dart';

@freezed
class BusInfoWrapper with _$BusInfoWrapper {
  factory BusInfoWrapper({
    List<BusInfoData>? data,
    String? path,
  }) = _BusInfoWrapper;

  factory BusInfoWrapper.fromJson(Map<String, dynamic> json) =>
      _$BusInfoWrapperFromJson(json);
}
