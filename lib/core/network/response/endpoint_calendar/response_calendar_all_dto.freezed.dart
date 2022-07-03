// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_all_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarAllWrapper _$CalendarAllWrapperFromJson(Map<String, dynamic> json) {
  return _CalendarAllWrapper.fromJson(json);
}

/// @nodoc
mixin _$CalendarAllWrapper {
  String? get title => throw _privateConstructorUsedError;
  List<WeekdayData> get calendar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarAllWrapperCopyWith<CalendarAllWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarAllWrapperCopyWith<$Res> {
  factory $CalendarAllWrapperCopyWith(
          CalendarAllWrapper value, $Res Function(CalendarAllWrapper) then) =
      _$CalendarAllWrapperCopyWithImpl<$Res>;
  $Res call({String? title, List<WeekdayData> calendar});
}

/// @nodoc
class _$CalendarAllWrapperCopyWithImpl<$Res>
    implements $CalendarAllWrapperCopyWith<$Res> {
  _$CalendarAllWrapperCopyWithImpl(this._value, this._then);

  final CalendarAllWrapper _value;
  // ignore: unused_field
  final $Res Function(CalendarAllWrapper) _then;

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
abstract class _$$_CalendarAllWrapperCopyWith<$Res>
    implements $CalendarAllWrapperCopyWith<$Res> {
  factory _$$_CalendarAllWrapperCopyWith(_$_CalendarAllWrapper value,
          $Res Function(_$_CalendarAllWrapper) then) =
      __$$_CalendarAllWrapperCopyWithImpl<$Res>;
  @override
  $Res call({String? title, List<WeekdayData> calendar});
}

/// @nodoc
class __$$_CalendarAllWrapperCopyWithImpl<$Res>
    extends _$CalendarAllWrapperCopyWithImpl<$Res>
    implements _$$_CalendarAllWrapperCopyWith<$Res> {
  __$$_CalendarAllWrapperCopyWithImpl(
      _$_CalendarAllWrapper _value, $Res Function(_$_CalendarAllWrapper) _then)
      : super(_value, (v) => _then(v as _$_CalendarAllWrapper));

  @override
  _$_CalendarAllWrapper get _value => super._value as _$_CalendarAllWrapper;

  @override
  $Res call({
    Object? title = freezed,
    Object? calendar = freezed,
  }) {
    return _then(_$_CalendarAllWrapper(
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
class _$_CalendarAllWrapper implements _CalendarAllWrapper {
  _$_CalendarAllWrapper(
      {this.title, final List<WeekdayData> calendar = const <WeekdayData>[]})
      : _calendar = calendar;

  factory _$_CalendarAllWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarAllWrapperFromJson(json);

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
    return 'CalendarAllWrapper(title: $title, calendar: $calendar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarAllWrapper &&
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
  _$$_CalendarAllWrapperCopyWith<_$_CalendarAllWrapper> get copyWith =>
      __$$_CalendarAllWrapperCopyWithImpl<_$_CalendarAllWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarAllWrapperToJson(this);
  }
}

abstract class _CalendarAllWrapper implements CalendarAllWrapper {
  factory _CalendarAllWrapper(
      {final String? title,
      final List<WeekdayData> calendar}) = _$_CalendarAllWrapper;

  factory _CalendarAllWrapper.fromJson(Map<String, dynamic> json) =
      _$_CalendarAllWrapper.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  List<WeekdayData> get calendar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarAllWrapperCopyWith<_$_CalendarAllWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
