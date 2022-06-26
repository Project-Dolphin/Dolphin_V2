// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_businfo_specific_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpecificBusInfoWrapper _$$_SpecificBusInfoWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_SpecificBusInfoWrapper(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => NodeInfoData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <NodeInfoData>[],
    );

Map<String, dynamic> _$$_SpecificBusInfoWrapperToJson(
        _$_SpecificBusInfoWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
