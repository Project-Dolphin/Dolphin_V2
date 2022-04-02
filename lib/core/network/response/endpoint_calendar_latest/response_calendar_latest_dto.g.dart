// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_calendar_latest_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LatestWrapper _$$_LatestWrapperFromJson(Map<String, dynamic> json) =>
    _$_LatestWrapper(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LatestData.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_LatestWrapperToJson(_$_LatestWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
      'path': instance.path,
    };
