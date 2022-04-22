import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_diet_society_detail_dto.freezed.dart';
part 'response_diet_society_detail_dto.g.dart';

@freezed
class DietDetail with _$DietDetail {
  factory DietDetail({
    @Default('') String type,
    @Default(<String>[]) List<String> menus,
  }) = _DietDetail;

  factory DietDetail.fromJson(Map<String, dynamic> json) =>
      _$DietDetailFromJson(json);
}
