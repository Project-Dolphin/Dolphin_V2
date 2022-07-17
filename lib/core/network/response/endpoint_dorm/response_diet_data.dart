import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_diet_data.g.dart';
part 'response_diet_data.freezed.dart';

@freezed
class DietData with _$DietData {
  factory DietData({
    @Default('') String title,
    @Default('') String subtitle,
    @Default(<String>[]) List<String> menus,
  }) = _DietData;

  factory DietData.fromJson(Map<String, dynamic> json) =>
      _$DietDataFromJson(json);
}
