// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_month_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarMonthWrapper _$CalendarMonthWrapperFromJson(Map<String, dynamic> json) {
  return _CalendarMonthWrapper.fromJson(json);
}

/// @nodoc
mixin _$CalendarMonthWrapper {
  String? get title => throw _privateConstructorUsedError;
  List<WeekdayData> get calendar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarMonthWrapperCopyWith<CalendarMonthWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarMonthWrapperCopyWith<$Res> {
  factory $CalendarMonthWrapperCopyWith(CalendarMonthWrapper value,
          $Res Function(CalendarMonthWrapper) then) =
      _$CalendarMonthWrapperCopyWithImpl<$Res>;
  $Res call({String? title, List<WeekdayData> calendar});
}

/// @nodoc
class _$CalendarMonthWrapperCopyWithImpl<$Res>
    implements $CalendarMonthWrapperCopyWith<$Res> {
  _$CalendarMonthWrapperCopyWithImpl(this._value, this._then);

  final CalendarMonthWrapper _value;
  // ignore: unused_field
  final $Res Function(CalendarMonthWrapper) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? calendar = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      calendar: calendar == freezed
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as List<WeekdayData>,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarMonthWrapperCopyWith<$Res>
    implements $CalendarMonthWrapperCopyWith<$Res> {
  factory _$$_CalendarMonthWrapperCopyWith(_$_CalendarMonthWrapper value,
          $Res Function(_$_CalendarMonthWrapper) then) =
      __$$_CalendarMonthWrapperCopyWithImpl<$Res>;
  @override
  $Res call({String? title, List<WeekdayData> calendar});
}

/// @nodoc
class __$$_CalendarMonthWrapperCopyWithImpl<$Res>
    extends _$CalendarMonthWrapperCopyWithImpl<$Res>
    implements _$$_CalendarMonthWrapperCopyWith<$Res> {
  __$$_CalendarMonthWrapperCopyWithImpl(_$_CalendarMonthWrapper _value,
      $Res Function(_$_CalendarMonthWrapper) _then)
      : super(_value, (v) => _then(v as _$_CalendarMonthWrapper));

  @override
  _$_CalendarMonthWrapper get _value => super._value as _$_CalendarMonthWrapper;

  @override
  $Res call({
    Object? title = freezed,
    Object? calendar = freezed,
  }) {
    return _then(_$_CalendarMonthWrapper(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      calendar: calendar == freezed
          ? _value._calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as List<WeekdayData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarMonthWrapper implements _CalendarMonthWrapper {
  _$_CalendarMonthWrapper(
      {this.title, final List<WeekdayData> calendar = const <WeekdayData>[]})
      : _calendar = calendar;

  factory _$_CalendarMonthWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarMonthWrapperFromJson(json);

  @override
  final String? title;
  final List<WeekdayData> _calendar;
  @override
  @JsonKey()
  List<WeekdayData> get calendar {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calendar);
  }

  @override
  String toString() {
    return 'CalendarMonthWrapper(title: $title, calendar: $calendar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarMonthWrapper &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._calendar, _calendar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_calendar));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarMonthWrapperCopyWith<_$_CalendarMonthWrapper> get copyWith =>
      __$$_CalendarMonthWrapperCopyWithImpl<_$_CalendarMonthWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarMonthWrapperToJson(this);
  }
}

abstract class _CalendarMonthWrapper implements CalendarMonthWrapper {
  factory _CalendarMonthWrapper(
      {final String? title,
      final List<WeekdayData> calendar}) = _$_CalendarMonthWrapper;

  factory _CalendarMonthWrapper.fromJson(Map<String, dynamic> json) =
      _$_CalendarMonthWrapper.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  List<WeekdayData> get calendar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarMonthWrapperCopyWith<_$_CalendarMonthWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
