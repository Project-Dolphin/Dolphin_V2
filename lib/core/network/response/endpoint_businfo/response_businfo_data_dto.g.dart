// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_businfo_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusInfoData _$$_BusInfoDataFromJson(Map<String, dynamic> json) =>
    _$_BusInfoData(
      bstopnm: json['bstopnm'] as String?,
      rpoint: json['rpoint'] as int? ?? 0,
      carno: json['carno'] as String?,
      lowplate: json['lowplate'] as int? ?? 0,
    );

Map<String, dynamic> _$$_BusInfoDataToJson(_$_BusInfoData instance) =>
    <String, dynamic>{
      'bstopnm': instance.bstopnm,
      'rpoint': instance.rpoint,
      'carno': instance.carno,
      'lowplate': instance.lowplate,
    };
