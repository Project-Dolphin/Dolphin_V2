// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarSumamryWrapper _$$_CalendarSumamryWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_CalendarSumamryWrapper(
      index: json['index'] as int,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CalendarSumamry.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CalendarSumamry>[],
    );

Map<String, dynamic> _$$_CalendarSumamryWrapperToJson(
        _$_CalendarSumamryWrapper instance) =>
    <String, dynamic>{
      'index': instance.index,
      'data': instance.data,
    };
