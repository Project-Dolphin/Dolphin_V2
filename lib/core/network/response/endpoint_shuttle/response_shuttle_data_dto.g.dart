// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_shuttle_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShuttleDataDto _$$_ShuttleDataDtoFromJson(Map<String, dynamic> json) =>
    _$_ShuttleDataDto(
      previous: json['previous'] == null
          ? null
          : ShuttleDetailDto.fromJson(json['previous'] as Map<String, dynamic>),
      next: (json['next'] as List<dynamic>?)
              ?.map((e) => ShuttleDetailDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ShuttleDetailDto>[],
    );

Map<String, dynamic> _$$_ShuttleDataDtoToJson(_$_ShuttleDataDto instance) =>
    <String, dynamic>{
      'previous': instance.previous,
      'next': instance.next,
    };
