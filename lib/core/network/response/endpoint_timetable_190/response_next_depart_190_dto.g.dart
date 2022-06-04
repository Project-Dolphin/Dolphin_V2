// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_next_depart_190_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NextDepart190Wrapper _$$_NextDepart190WrapperFromJson(
        Map<String, dynamic> json) =>
    _$_NextDepart190Wrapper(
      nextDepartBus: (json['nextDepartBus'] as List<dynamic>?)
          ?.map((e) => DepartBusInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_NextDepart190WrapperToJson(
        _$_NextDepart190Wrapper instance) =>
    <String, dynamic>{
      'nextDepartBus': instance.nextDepartBus,
      'path': instance.path,
    };
