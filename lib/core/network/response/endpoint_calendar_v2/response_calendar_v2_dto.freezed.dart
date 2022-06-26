// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_v2_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarV2Wrapper _$CalendarV2WrapperFromJson(Map<String, dynamic> json) {
  return _CalendarV2Wrapper.fromJson(json);
}

/// @nodoc
class _$CalendarV2WrapperTearOff {
  const _$CalendarV2WrapperTearOff();

  _CalendarV2Wrapper call({List<CalendarDataV2>? data}) {
    return _CalendarV2Wrapper(
      data: data,
    );
  }

  CalendarV2Wrapper fromJson(Map<String, Object?> json) {
    return CalendarV2Wrapper.fromJson(json);
  }
}

/// @nodoc
const $CalendarV2Wrapper = _$CalendarV2WrapperTearOff();

/// @nodoc
mixin _$CalendarV2Wrapper {
  List<CalendarDataV2>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarV2WrapperCopyWith<CalendarV2Wrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarV2WrapperCopyWith<$Res> {
  factory $CalendarV2WrapperCopyWith(
          CalendarV2Wrapper value, $Res Function(CalendarV2Wrapper) then) =
      _$CalendarV2WrapperCopyWithImpl<$Res>;
  $Res call({List<CalendarDataV2>? data});
}

/// @nodoc
class _$CalendarV2WrapperCopyWithImpl<$Res>
    implements $CalendarV2WrapperCopyWith<$Res> {
  _$CalendarV2WrapperCopyWithImpl(this._value, this._then);

  final CalendarV2Wrapper _value;
  // ignore: unused_field
  final $Res Function(CalendarV2Wrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CalendarDataV2>?,
    ));
  }
}

/// @nodoc
abstract class _$CalendarV2WrapperCopyWith<$Res>
    implements $CalendarV2WrapperCopyWith<$Res> {
  factory _$CalendarV2WrapperCopyWith(
          _CalendarV2Wrapper value, $Res Function(_CalendarV2Wrapper) then) =
      __$CalendarV2WrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<CalendarDataV2>? data});
}

/// @nodoc
class __$CalendarV2WrapperCopyWithImpl<$Res>
    extends _$CalendarV2WrapperCopyWithImpl<$Res>
    implements _$CalendarV2WrapperCopyWith<$Res> {
  __$CalendarV2WrapperCopyWithImpl(
      _CalendarV2Wrapper _value, $Res Function(_CalendarV2Wrapper) _then)
      : super(_value, (v) => _then(v as _CalendarV2Wrapper));

  @override
  _CalendarV2Wrapper get _value => super._value as _CalendarV2Wrapper;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_CalendarV2Wrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CalendarDataV2>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarV2Wrapper implements _CalendarV2Wrapper {
  _$_CalendarV2Wrapper({this.data});

  factory _$_CalendarV2Wrapper.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarV2WrapperFromJson(json);

  @override
  final List<CalendarDataV2>? data;

  @override
  String toString() {
    return 'CalendarV2Wrapper(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarV2Wrapper &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$CalendarV2WrapperCopyWith<_CalendarV2Wrapper> get copyWith =>
      __$CalendarV2WrapperCopyWithImpl<_CalendarV2Wrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarV2WrapperToJson(this);
  }
}

abstract class _CalendarV2Wrapper implements CalendarV2Wrapper {
  factory _CalendarV2Wrapper({List<CalendarDataV2>? data}) =
      _$_CalendarV2Wrapper;

  factory _CalendarV2Wrapper.fromJson(Map<String, dynamic> json) =
      _$_CalendarV2Wrapper.fromJson;

  @override
  List<CalendarDataV2>? get data;
  @override
  @JsonKey(ignore: true)
  _$CalendarV2WrapperCopyWith<_CalendarV2Wrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
