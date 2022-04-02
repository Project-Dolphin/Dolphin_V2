// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_diet_dorm_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DormData _$$_DormDataFromJson(Map<String, dynamic> json) => _$_DormData(
      morning:
          (json['morning'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lunch:
          (json['lunch'] as List<dynamic>?)?.map((e) => e as String).toList(),
      dinner:
          (json['dinner'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_DormDataToJson(_$_DormData instance) =>
    <String, dynamic>{
      'morning': instance.morning,
      'lunch': instance.lunch,
      'dinner': instance.dinner,
    };
