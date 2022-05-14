// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StationInfo _$$_StationInfoFromJson(Map<String, dynamic> json) =>
    _$_StationInfo(
      nearStation: json['nearStation'] as String? ?? '부산역',
      nodeId: json['nodeId'] as String? ?? '169100201',
    );

Map<String, dynamic> _$$_StationInfoToJson(_$_StationInfo instance) =>
    <String, dynamic>{
      'nearStation': instance.nearStation,
      'nodeId': instance.nodeId,
    };
