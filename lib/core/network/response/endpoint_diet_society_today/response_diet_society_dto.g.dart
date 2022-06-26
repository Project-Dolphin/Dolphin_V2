// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_diet_society_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DietSocietyWrapper _$$_DietSocietyWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_DietSocietyWrapper(
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

Map<String, dynamic> _$$_DietSocietyWrapperToJson(
        _$_DietSocietyWrapper instance) =>
    <String, dynamic>{
      'student': instance.student,
      'snack': instance.snack,
      'staff': instance.staff,
    };
