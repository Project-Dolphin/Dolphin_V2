// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_calendar_v2_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarV2Wrapper _$$_CalendarV2WrapperFromJson(Map<String, dynamic> json) =>
    _$_CalendarV2Wrapper(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CalendarDataV2.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_CalendarV2WrapperToJson(
        _$_CalendarV2Wrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
      'path': instance.path,
    };
