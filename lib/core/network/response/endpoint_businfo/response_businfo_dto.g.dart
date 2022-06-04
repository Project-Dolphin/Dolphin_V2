// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_businfo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusInfoWrapper _$$_BusInfoWrapperFromJson(Map<String, dynamic> json) =>
    _$_BusInfoWrapper(
      busStopInfo: (json['busStopInfo'] as List<dynamic>?)
          ?.map((e) => BusInfoData.fromJson(e as Map<String, dynamic>))
          .toList(),
      busNumber: json['busNumber'] as String?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_BusInfoWrapperToJson(_$_BusInfoWrapper instance) =>
    <String, dynamic>{
      'busStopInfo': instance.busStopInfo,
      'busNumber': instance.busNumber,
      'path': instance.path,
    };
