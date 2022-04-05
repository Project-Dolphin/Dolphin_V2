// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_diet_society_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DietDetail _$$_DietDetailFromJson(Map<String, dynamic> json) =>
    _$_DietDetail(
      type: json['type'] as String?,
      menus:
          (json['menus'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_DietDetailToJson(_$_DietDetail instance) =>
    <String, dynamic>{
      'type': instance.type,
      'menus': instance.menus,
    };
