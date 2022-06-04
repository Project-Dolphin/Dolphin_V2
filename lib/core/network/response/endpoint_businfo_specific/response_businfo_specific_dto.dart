import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_businfo_specific_data_dto.dart';

part 'response_businfo_specific_dto.freezed.dart';
part 'response_businfo_specific_dto.g.dart';

@freezed
class SpecificBusInfoWrapper with _$SpecificBusInfoWrapper {
  factory SpecificBusInfoWrapper({
    @Default(<NodeInfoData>[]) List<NodeInfoData> data,
    String? path,
  }) = _SpecificBusInfoWrapper;

  factory SpecificBusInfoWrapper.fromJson(Map<String, dynamic> json) =>
      _$SpecificBusInfoWrapperFromJson(json);
}
