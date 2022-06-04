// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_shuttle_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShuttleDataDto _$$_ShuttleDataDtoFromJson(Map<String, dynamic> json) =>
    _$_ShuttleDataDto(
      destination: json['destination'] as String?,
      time: json['time'] as String?,
      remainMinutes: json['remainMinutes'] as int?,
    );

Map<String, dynamic> _$$_ShuttleDataDtoToJson(_$_ShuttleDataDto instance) =>
    <String, dynamic>{
      'destination': instance.destination,
      'time': instance.time,
      'remainMinutes': instance.remainMinutes,
    };
