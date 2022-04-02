// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_timetable_190_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeTable190Wrapper _$TimeTable190WrapperFromJson(Map<String, dynamic> json) {
  return _TimeTable190Wrapper.fromJson(json);
}

/// @nodoc
class _$TimeTable190WrapperTearOff {
  const _$TimeTable190WrapperTearOff();

  _TimeTable190Wrapper call({List<TimeTableData>? data, String? path}) {
    return _TimeTable190Wrapper(
      data: data,
      path: path,
    );
  }

  TimeTable190Wrapper fromJson(Map<String, Object?> json) {
    return TimeTable190Wrapper.fromJson(json);
  }
}

/// @nodoc
const $TimeTable190Wrapper = _$TimeTable190WrapperTearOff();

/// @nodoc
mixin _$TimeTable190Wrapper {
  List<TimeTableData>? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeTable190WrapperCopyWith<TimeTable190Wrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTable190WrapperCopyWith<$Res> {
  factory $TimeTable190WrapperCopyWith(
          TimeTable190Wrapper value, $Res Function(TimeTable190Wrapper) then) =
      _$TimeTable190WrapperCopyWithImpl<$Res>;
  $Res call({List<TimeTableData>? data, String? path});
}

/// @nodoc
class _$TimeTable190WrapperCopyWithImpl<$Res>
    implements $TimeTable190WrapperCopyWith<$Res> {
  _$TimeTable190WrapperCopyWithImpl(this._value, this._then);

  final TimeTable190Wrapper _value;
  // ignore: unused_field
  final $Res Function(TimeTable190Wrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TimeTableData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TimeTable190WrapperCopyWith<$Res>
    implements $TimeTable190WrapperCopyWith<$Res> {
  factory _$TimeTable190WrapperCopyWith(_TimeTable190Wrapper value,
          $Res Function(_TimeTable190Wrapper) then) =
      __$TimeTable190WrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<TimeTableData>? data, String? path});
}

/// @nodoc
class __$TimeTable190WrapperCopyWithImpl<$Res>
    extends _$TimeTable190WrapperCopyWithImpl<$Res>
    implements _$TimeTable190WrapperCopyWith<$Res> {
  __$TimeTable190WrapperCopyWithImpl(
      _TimeTable190Wrapper _value, $Res Function(_TimeTable190Wrapper) _then)
      : super(_value, (v) => _then(v as _TimeTable190Wrapper));

  @override
  _TimeTable190Wrapper get _value => super._value as _TimeTable190Wrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_TimeTable190Wrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TimeTableData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeTable190Wrapper implements _TimeTable190Wrapper {
  _$_TimeTable190Wrapper({this.data, this.path});

  factory _$_TimeTable190Wrapper.fromJson(Map<String, dynamic> json) =>
      _$$_TimeTable190WrapperFromJson(json);

  @override
  final List<TimeTableData>? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'TimeTable190Wrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeTable190Wrapper &&
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
  _$TimeTable190WrapperCopyWith<_TimeTable190Wrapper> get copyWith =>
      __$TimeTable190WrapperCopyWithImpl<_TimeTable190Wrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeTable190WrapperToJson(this);
  }
}

abstract class _TimeTable190Wrapper implements TimeTable190Wrapper {
  factory _TimeTable190Wrapper({List<TimeTableData>? data, String? path}) =
      _$_TimeTable190Wrapper;

  factory _TimeTable190Wrapper.fromJson(Map<String, dynamic> json) =
      _$_TimeTable190Wrapper.fromJson;

  @override
  List<TimeTableData>? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$TimeTable190WrapperCopyWith<_TimeTable190Wrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
