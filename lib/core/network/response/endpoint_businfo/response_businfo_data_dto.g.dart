// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_businfo_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusInfoData _$$_BusInfoDataFromJson(Map<String, dynamic> json) =>
    _$_BusInfoData(
      carno: json['carno'] as String?,
      nodeid: json['nodeid'] as int?,
      lat: (json['lat'] as num?)?.toDouble(),
      lin: (json['lin'] as num?)?.toDouble(),
      gpsym: json['gpsym'] as int?,
      bstopnm: json['bstopnm'] as String?,
    );

Map<String, dynamic> _$$_BusInfoDataToJson(_$_BusInfoData instance) =>
    <String, dynamic>{
      'carno': instance.carno,
      'nodeid': instance.nodeid,
      'lat': instance.lat,
      'lin': instance.lin,
      'gpsym': instance.gpsym,
      'bstopnm': instance.bstopnm,
    };
