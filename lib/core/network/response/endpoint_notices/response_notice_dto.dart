import 'package:freezed_annotation/freezed_annotation.dart';

import 'response_notice_data_dto.dart';

part 'response_notice_dto.freezed.dart';
part 'response_notice_dto.g.dart';

@freezed
class NoticeWrapper with _$NoticeWrapper {
  factory NoticeWrapper({
    List<NoticeData>? data,
  }) = _NoticeWrapper;

  factory NoticeWrapper.fromJson(Map<String, dynamic> json) =>
      _$NoticeWrapperFromJson(json);
}
