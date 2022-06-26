// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_diet_dorm_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DietDormWrapper _$$_DietDormWrapperFromJson(Map<String, dynamic> json) =>
    _$_DietDormWrapper(
      morning: (json['morning'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      lunch:
          (json['lunch'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      dinner: (json['dinner'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$_DietDormWrapperToJson(_$_DietDormWrapper instance) =>
    <String, dynamic>{
      'morning': instance.morning,
      'lunch': instance.lunch,
      'dinner': instance.dinner,
    };
