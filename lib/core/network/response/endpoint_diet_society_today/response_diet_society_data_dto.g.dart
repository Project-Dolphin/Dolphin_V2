// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_diet_society_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DietData _$$_DietDataFromJson(Map<String, dynamic> json) => _$_DietData(
      student: (json['student'] as List<dynamic>?)
          ?.map((e) => DietDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      snack: (json['snack'] as List<dynamic>?)
          ?.map((e) => DietDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      staff: (json['staff'] as List<dynamic>?)
          ?.map((e) => DietDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DietDataToJson(_$_DietData instance) =>
    <String, dynamic>{
      'student': instance.student,
      'snack': instance.snack,
      'staff': instance.staff,
    };
