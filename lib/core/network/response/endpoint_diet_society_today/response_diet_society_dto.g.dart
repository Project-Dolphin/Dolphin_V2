// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_diet_society_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DietSocietyWrapper _$$_DietSocietyWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_DietSocietyWrapper(
      data: json['data'] == null
          ? null
          : DietData.fromJson(json['data'] as Map<String, dynamic>),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$_DietSocietyWrapperToJson(
        _$_DietSocietyWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
      'path': instance.path,
    };
