// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_holiday_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HolidayWrapper _$$_HolidayWrapperFromJson(Map<String, dynamic> json) =>
    _$_HolidayWrapper(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HolidayData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HolidayWrapperToJson(_$_HolidayWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
