// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_diet_cafe_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CafeData _$$_CafeDataFromJson(Map<String, dynamic> json) => _$_CafeData(
      student: (json['student'] as List<dynamic>?)
              ?.map((e) => DietDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DietDetail>[],
      snack: (json['snack'] as List<dynamic>?)
              ?.map((e) => DietDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DietDetail>[],
      staff: (json['staff'] as List<dynamic>?)
              ?.map((e) => DietDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DietDetail>[],
    );

Map<String, dynamic> _$$_CafeDataToJson(_$_CafeData instance) =>
    <String, dynamic>{
      'student': instance.student,
      'snack': instance.snack,
      'staff': instance.staff,
    };
