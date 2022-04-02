// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_weather_now_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherWrapper _$WeatherWrapperFromJson(Map<String, dynamic> json) {
  return _WeatherWrapper.fromJson(json);
}

/// @nodoc
class _$WeatherWrapperTearOff {
  const _$WeatherWrapperTearOff();

  _WeatherWrapper call({WeatherData? data, String? path}) {
    return _WeatherWrapper(
      data: data,
      path: path,
    );
  }

  WeatherWrapper fromJson(Map<String, Object?> json) {
    return WeatherWrapper.fromJson(json);
  }
}

/// @nodoc
const $WeatherWrapper = _$WeatherWrapperTearOff();

/// @nodoc
mixin _$WeatherWrapper {
  WeatherData? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherWrapperCopyWith<WeatherWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherWrapperCopyWith<$Res> {
  factory $WeatherWrapperCopyWith(
          WeatherWrapper value, $Res Function(WeatherWrapper) then) =
      _$WeatherWrapperCopyWithImpl<$Res>;
  $Res call({WeatherData? data, String? path});

  $WeatherDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$WeatherWrapperCopyWithImpl<$Res>
    implements $WeatherWrapperCopyWith<$Res> {
  _$WeatherWrapperCopyWithImpl(this._value, this._then);

  final WeatherWrapper _value;
  // ignore: unused_field
  final $Res Function(WeatherWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherData?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $WeatherDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WeatherDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherWrapperCopyWith<$Res>
    implements $WeatherWrapperCopyWith<$Res> {
  factory _$WeatherWrapperCopyWith(
          _WeatherWrapper value, $Res Function(_WeatherWrapper) then) =
      __$WeatherWrapperCopyWithImpl<$Res>;
  @override
  $Res call({WeatherData? data, String? path});

  @override
  $WeatherDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$WeatherWrapperCopyWithImpl<$Res>
    extends _$WeatherWrapperCopyWithImpl<$Res>
    implements _$WeatherWrapperCopyWith<$Res> {
  __$WeatherWrapperCopyWithImpl(
      _WeatherWrapper _value, $Res Function(_WeatherWrapper) _then)
      : super(_value, (v) => _then(v as _WeatherWrapper));

  @override
  _WeatherWrapper get _value => super._value as _WeatherWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_WeatherWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WeatherData?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherWrapper implements _WeatherWrapper {
  _$_WeatherWrapper({this.data, this.path});

  factory _$_WeatherWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherWrapperFromJson(json);

  @override
  final WeatherData? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'WeatherWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherWrapper &&
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
  _$WeatherWrapperCopyWith<_WeatherWrapper> get copyWith =>
      __$WeatherWrapperCopyWithImpl<_WeatherWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherWrapperToJson(this);
  }
}

abstract class _WeatherWrapper implements WeatherWrapper {
  factory _WeatherWrapper({WeatherData? data, String? path}) =
      _$_WeatherWrapper;

  factory _WeatherWrapper.fromJson(Map<String, dynamic> json) =
      _$_WeatherWrapper.fromJson;

  @override
  WeatherData? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$WeatherWrapperCopyWith<_WeatherWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
