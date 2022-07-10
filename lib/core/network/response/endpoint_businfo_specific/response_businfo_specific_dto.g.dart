// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_businfo_specific_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpecificBusInfoWrapper _$$_SpecificBusInfoWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_SpecificBusInfoWrapper(
      busNumber: json['busNumber'] as String?,
      busStopInfo: (json['busStopInfo'] as List<dynamic>?)
              ?.map((e) => BusInfoData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <BusInfoData>[],
    );

Map<String, dynamic> _$$_SpecificBusInfoWrapperToJson(
        _$_SpecificBusInfoWrapper instance) =>
    <String, dynamic>{
      'busNumber': instance.busNumber,
      'busStopInfo': instance.busStopInfo,
    };
