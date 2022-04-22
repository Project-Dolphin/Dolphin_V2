// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_shuttle_next_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShuttleNextWrapper _$$_ShuttleNextWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_ShuttleNextWrapper(
      data: json['data'] == null
          ? null
          : ShuttleDataDto.fromJson(json['data'] as Map<String, dynamic>),
      path: json['path'] as String? ?? '',
    );

Map<String, dynamic> _$$_ShuttleNextWrapperToJson(
        _$_ShuttleNextWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
      'path': instance.path,
    };
