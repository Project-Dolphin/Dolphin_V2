// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_timetable_190_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeTable190Wrapper _$$_TimeTable190WrapperFromJson(
        Map<String, dynamic> json) =>
    _$_TimeTable190Wrapper(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TimeTableData.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_TimeTable190WrapperToJson(
        _$_TimeTable190Wrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
      'path': instance.path,
    };
