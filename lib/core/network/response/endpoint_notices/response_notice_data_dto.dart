import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_notice_data_dto.g.dart';
part 'response_notice_data_dto.freezed.dart';

@freezed
class NoticeData with _$NoticeData {
  factory NoticeData({
    String? title,
    String? link,
    String? date,
  }) = _NoticeData;

  factory NoticeData.fromJson(Map<String, dynamic> json) =>
      _$NoticeDataFromJson(json);
}
