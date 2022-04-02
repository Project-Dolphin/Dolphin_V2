// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_holiday_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HolidayData _$$_HolidayDataFromJson(Map<String, dynamic> json) =>
    _$_HolidayData(
      term: json['term'] == null
          ? null
          : HolidayTerm.fromJson(json['term'] as Map<String, dynamic>),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_HolidayDataToJson(_$_HolidayData instance) =>
    <String, dynamic>{
      'term': instance.term,
      'content': instance.content,
    };
