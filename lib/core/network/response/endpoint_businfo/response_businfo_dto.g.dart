// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_businfo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusInfoWrapper _$$_BusInfoWrapperFromJson(Map<String, dynamic> json) =>
    _$_BusInfoWrapper(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BusInfoData.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_BusInfoWrapperToJson(_$_BusInfoWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
      'path': instance.path,
    };
