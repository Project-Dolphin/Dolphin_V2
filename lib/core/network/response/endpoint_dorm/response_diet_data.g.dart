// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_diet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DietData _$$_DietDataFromJson(Map<String, dynamic> json) => _$_DietData(
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      menus:
          (json['menus'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
    );

Map<String, dynamic> _$$_DietDataToJson(_$_DietData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'menus': instance.menus,
    };
