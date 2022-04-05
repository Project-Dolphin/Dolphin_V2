// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_shuttle_today_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShuttleTodayWrapper _$$_ShuttleTodayWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_ShuttleTodayWrapper(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ShuttleDetailDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_ShuttleTodayWrapperToJson(
        _$_ShuttleTodayWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
      'path': instance.path,
    };
