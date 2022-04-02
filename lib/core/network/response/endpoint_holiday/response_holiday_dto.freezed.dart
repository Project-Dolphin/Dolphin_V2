// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_holiday_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HolidayWrapper _$HolidayWrapperFromJson(Map<String, dynamic> json) {
  return _HolidayWrapper.fromJson(json);
}

/// @nodoc
class _$HolidayWrapperTearOff {
  const _$HolidayWrapperTearOff();

  _HolidayWrapper call({List<HolidayData>? data, String? path}) {
    return _HolidayWrapper(
      data: data,
      path: path,
    );
  }

  HolidayWrapper fromJson(Map<String, Object?> json) {
    return HolidayWrapper.fromJson(json);
  }
}

/// @nodoc
const $HolidayWrapper = _$HolidayWrapperTearOff();

/// @nodoc
mixin _$HolidayWrapper {
  List<HolidayData>? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolidayWrapperCopyWith<HolidayWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayWrapperCopyWith<$Res> {
  factory $HolidayWrapperCopyWith(
          HolidayWrapper value, $Res Function(HolidayWrapper) then) =
      _$HolidayWrapperCopyWithImpl<$Res>;
  $Res call({List<HolidayData>? data, String? path});
}

/// @nodoc
class _$HolidayWrapperCopyWithImpl<$Res>
    implements $HolidayWrapperCopyWith<$Res> {
  _$HolidayWrapperCopyWithImpl(this._value, this._then);

  final HolidayWrapper _value;
  // ignore: unused_field
  final $Res Function(HolidayWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HolidayData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HolidayWrapperCopyWith<$Res>
    implements $HolidayWrapperCopyWith<$Res> {
  factory _$HolidayWrapperCopyWith(
          _HolidayWrapper value, $Res Function(_HolidayWrapper) then) =
      __$HolidayWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<HolidayData>? data, String? path});
}

/// @nodoc
class __$HolidayWrapperCopyWithImpl<$Res>
    extends _$HolidayWrapperCopyWithImpl<$Res>
    implements _$HolidayWrapperCopyWith<$Res> {
  __$HolidayWrapperCopyWithImpl(
      _HolidayWrapper _value, $Res Function(_HolidayWrapper) _then)
      : super(_value, (v) => _then(v as _HolidayWrapper));

  @override
  _HolidayWrapper get _value => super._value as _HolidayWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_HolidayWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HolidayData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HolidayWrapper implements _HolidayWrapper {
  _$_HolidayWrapper({this.data, this.path});

  factory _$_HolidayWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_HolidayWrapperFromJson(json);

  @override
  final List<HolidayData>? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'HolidayWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HolidayWrapper &&
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
  _$HolidayWrapperCopyWith<_HolidayWrapper> get copyWith =>
      __$HolidayWrapperCopyWithImpl<_HolidayWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HolidayWrapperToJson(this);
  }
}

abstract class _HolidayWrapper implements HolidayWrapper {
  factory _HolidayWrapper({List<HolidayData>? data, String? path}) =
      _$_HolidayWrapper;

  factory _HolidayWrapper.fromJson(Map<String, dynamic> json) =
      _$_HolidayWrapper.fromJson;

  @override
  List<HolidayData>? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$HolidayWrapperCopyWith<_HolidayWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
