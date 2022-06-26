// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarWrapper _$CalendarWrapperFromJson(Map<String, dynamic> json) {
  return _CalendarWrapper.fromJson(json);
}

/// @nodoc
mixin _$CalendarWrapper {
  List<WeekdayData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarWrapperCopyWith<CalendarWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarWrapperCopyWith<$Res> {
  factory $CalendarWrapperCopyWith(
          CalendarWrapper value, $Res Function(CalendarWrapper) then) =
      _$CalendarWrapperCopyWithImpl<$Res>;
  $Res call({List<WeekdayData>? data});
}

/// @nodoc
class _$CalendarWrapperCopyWithImpl<$Res>
    implements $CalendarWrapperCopyWith<$Res> {
  _$CalendarWrapperCopyWithImpl(this._value, this._then);

  final CalendarWrapper _value;
  // ignore: unused_field
  final $Res Function(CalendarWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WeekdayData>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarWrapperCopyWith<$Res>
    implements $CalendarWrapperCopyWith<$Res> {
  factory _$$_CalendarWrapperCopyWith(
          _$_CalendarWrapper value, $Res Function(_$_CalendarWrapper) then) =
      __$$_CalendarWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<WeekdayData>? data});
}

/// @nodoc
class __$$_CalendarWrapperCopyWithImpl<$Res>
    extends _$CalendarWrapperCopyWithImpl<$Res>
    implements _$$_CalendarWrapperCopyWith<$Res> {
  __$$_CalendarWrapperCopyWithImpl(
      _$_CalendarWrapper _value, $Res Function(_$_CalendarWrapper) _then)
      : super(_value, (v) => _then(v as _$_CalendarWrapper));

  @override
  _$_CalendarWrapper get _value => super._value as _$_CalendarWrapper;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_CalendarWrapper(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WeekdayData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarWrapper implements _CalendarWrapper {
  _$_CalendarWrapper({final List<WeekdayData>? data}) : _data = data;

  factory _$_CalendarWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarWrapperFromJson(json);

  final List<WeekdayData>? _data;
  @override
  List<WeekdayData>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CalendarWrapper(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarWrapper &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarWrapperCopyWith<_$_CalendarWrapper> get copyWith =>
      __$$_CalendarWrapperCopyWithImpl<_$_CalendarWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarWrapperToJson(this);
  }
}

abstract class _CalendarWrapper implements CalendarWrapper {
  factory _CalendarWrapper({final List<WeekdayData>? data}) =
      _$_CalendarWrapper;

  factory _CalendarWrapper.fromJson(Map<String, dynamic> json) =
      _$_CalendarWrapper.fromJson;

  @override
  List<WeekdayData>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarWrapperCopyWith<_$_CalendarWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
