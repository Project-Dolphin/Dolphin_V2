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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarWrapper _$CalendarWrapperFromJson(Map<String, dynamic> json) {
  return _CalendarWrapper.fromJson(json);
}

/// @nodoc
class _$CalendarWrapperTearOff {
  const _$CalendarWrapperTearOff();

  _CalendarWrapper call({List<WeekdayData>? data, String? path}) {
    return _CalendarWrapper(
      data: data,
      path: path,
    );
  }

  CalendarWrapper fromJson(Map<String, Object?> json) {
    return CalendarWrapper.fromJson(json);
  }
}

/// @nodoc
const $CalendarWrapper = _$CalendarWrapperTearOff();

/// @nodoc
mixin _$CalendarWrapper {
  List<WeekdayData>? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

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
  $Res call({List<WeekdayData>? data, String? path});
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
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WeekdayData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CalendarWrapperCopyWith<$Res>
    implements $CalendarWrapperCopyWith<$Res> {
  factory _$CalendarWrapperCopyWith(
          _CalendarWrapper value, $Res Function(_CalendarWrapper) then) =
      __$CalendarWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<WeekdayData>? data, String? path});
}

/// @nodoc
class __$CalendarWrapperCopyWithImpl<$Res>
    extends _$CalendarWrapperCopyWithImpl<$Res>
    implements _$CalendarWrapperCopyWith<$Res> {
  __$CalendarWrapperCopyWithImpl(
      _CalendarWrapper _value, $Res Function(_CalendarWrapper) _then)
      : super(_value, (v) => _then(v as _CalendarWrapper));

  @override
  _CalendarWrapper get _value => super._value as _CalendarWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_CalendarWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WeekdayData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarWrapper implements _CalendarWrapper {
  _$_CalendarWrapper({this.data, this.path});

  factory _$_CalendarWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarWrapperFromJson(json);

  @override
  final List<WeekdayData>? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'CalendarWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarWrapper &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$CalendarWrapperCopyWith<_CalendarWrapper> get copyWith =>
      __$CalendarWrapperCopyWithImpl<_CalendarWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarWrapperToJson(this);
  }
}

abstract class _CalendarWrapper implements CalendarWrapper {
  factory _CalendarWrapper({List<WeekdayData>? data, String? path}) =
      _$_CalendarWrapper;

  factory _CalendarWrapper.fromJson(Map<String, dynamic> json) =
      _$_CalendarWrapper.fromJson;

  @override
  List<WeekdayData>? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$CalendarWrapperCopyWith<_CalendarWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
