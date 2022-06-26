// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_businfo_specific_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NodeInfoData _$$_NodeInfoDataFromJson(Map<String, dynamic> json) =>
    _$_NodeInfoData(
      busStopName: json['busStopName'] as String?,
      min1: json['min1'] as int?,
      min2: json['min2'] as int?,
      lineno: json['lineno'] as String?,
    );

Map<String, dynamic> _$$_NodeInfoDataToJson(_$_NodeInfoData instance) =>
    <String, dynamic>{
      'busStopName': instance.busStopName,
      'min1': instance.min1,
      'min2': instance.min2,
      'lineno': instance.lineno,
    };
