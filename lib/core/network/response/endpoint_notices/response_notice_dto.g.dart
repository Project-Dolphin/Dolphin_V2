// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_notice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoticeWrapper _$$_NoticeWrapperFromJson(Map<String, dynamic> json) =>
    _$_NoticeWrapper(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => NoticeData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <NoticeData>[],
    );

Map<String, dynamic> _$$_NoticeWrapperToJson(_$_NoticeWrapper instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
