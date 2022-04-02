import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_businfo_specific_data_dto.dart';

part 'response_businfo_specific_dto.g.dart';
part 'response_businfo_specific_dto.freezed.dart';

@freezed
class SpecificBusInfoWrapper with _$SpecificBusInfoWrapper {
  factory SpecificBusInfoWrapper({
    List<NodeInfoData>? data,
    String? path,
  }) = _SpecificBusInfoWrapper;

  factory SpecificBusInfoWrapper.fromJson(Map<String, dynamic> json) =>
      _$SpecificBusInfoWrapperFromJson(json);
}
