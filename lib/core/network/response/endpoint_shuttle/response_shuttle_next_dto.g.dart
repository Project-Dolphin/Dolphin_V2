// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_shuttle_next_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShuttleNextWrapper _$$_ShuttleNextWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_ShuttleNextWrapper(
      nextShuttle: (json['nextShuttle'] as List<dynamic>?)
              ?.map((e) => ShuttleDataDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ShuttleDataDto>[],
      path: json['path'] as String? ?? '',
    );

Map<String, dynamic> _$$_ShuttleNextWrapperToJson(
        _$_ShuttleNextWrapper instance) =>
    <String, dynamic>{
      'nextShuttle': instance.nextShuttle,
      'path': instance.path,
    };
