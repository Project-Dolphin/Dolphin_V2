import 'package:freezed_annotation/freezed_annotation.dart';

import 'calendar_summary.dart';

part 'calendar_wrapper.freezed.dart';
part 'calendar_wrapper.g.dart';

@freezed
class CalendarSumamryWrapper with _$CalendarSumamryWrapper {
  factory CalendarSumamryWrapper({
    required int index,
    @Default(<CalendarSumamry>[]) List<CalendarSumamry> data,
  }) = _CalendarSumamryWrapper;

  factory CalendarSumamryWrapper.fromJson(Map<String, dynamic> json) =>
      _$CalendarSumamryWrapperFromJson(json);
}
