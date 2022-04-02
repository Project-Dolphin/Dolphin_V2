// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_weather_now_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  return _WeatherData.fromJson(json);
}

/// @nodoc
class _$WeatherDataTearOff {
  const _$WeatherDataTearOff();

  _WeatherData call(
      {String? status,
      String? temparature,
      String? windSpeed,
      String? humidity}) {
    return _WeatherData(
      status: status,
      temparature: temparature,
      windSpeed: windSpeed,
      humidity: humidity,
    );
  }

  WeatherData fromJson(Map<String, Object?> json) {
    return WeatherData.fromJson(json);
  }
}

/// @nodoc
const $WeatherData = _$WeatherDataTearOff();

/// @nodoc
mixin _$WeatherData {
  String? get status => throw _privateConstructorUsedError;
  String? get temparature => throw _privateConstructorUsedError;
  String? get windSpeed => throw _privateConstructorUsedError;
  String? get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res>;
  $Res call(
      {String? status,
      String? temparature,
      String? windSpeed,
      String? humidity});
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res> implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  final WeatherData _value;
  // ignore: unused_field
  final $Res Function(WeatherData) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? temparature = freezed,
    Object? windSpeed = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      temparature: temparature == freezed
          ? _value.temparature
          : temparature // ignore: cast_nullable_to_non_nullable
              as String?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WeatherDataCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$WeatherDataCopyWith(
          _WeatherData value, $Res Function(_WeatherData) then) =
      __$WeatherDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      String? temparature,
      String? windSpeed,
      String? humidity});
}

/// @nodoc
class __$WeatherDataCopyWithImpl<$Res> extends _$WeatherDataCopyWithImpl<$Res>
    implements _$WeatherDataCopyWith<$Res> {
  __$WeatherDataCopyWithImpl(
      _WeatherData _value, $Res Function(_WeatherData) _then)
      : super(_value, (v) => _then(v as _WeatherData));

  @override
  _WeatherData get _value => super._value as _WeatherData;

  @override
  $Res call({
    Object? status = freezed,
    Object? temparature = freezed,
    Object? windSpeed = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_WeatherData(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      temparature: temparature == freezed
          ? _value.temparature
          : temparature // ignore: cast_nullable_to_non_nullable
              as String?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as String?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherData implements _WeatherData {
  _$_WeatherData(
      {this.status, this.temparature, this.windSpeed, this.humidity});

  factory _$_WeatherData.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDataFromJson(json);

  @override
  final String? status;
  @override
  final String? temparature;
  @override
  final String? windSpeed;
  @override
  final String? humidity;

  @override
  String toString() {
    return 'WeatherData(status: $status, temparature: $temparature, windSpeed: $windSpeed, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherData &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.temparature, temparature) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality().equals(other.humidity, humidity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(temparature),
      const DeepCollectionEquality().hash(windSpeed),
      const DeepCollectionEquality().hash(humidity));

  @JsonKey(ignore: true)
  @override
  _$WeatherDataCopyWith<_WeatherData> get copyWith =>
      __$WeatherDataCopyWithImpl<_WeatherData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDataToJson(this);
  }
}

abstract class _WeatherData implements WeatherData {
  factory _WeatherData(
      {String? status,
      String? temparature,
      String? windSpeed,
      String? humidity}) = _$_WeatherData;

  factory _WeatherData.fromJson(Map<String, dynamic> json) =
      _$_WeatherData.fromJson;

  @override
  String? get status;
  @override
  String? get temparature;
  @override
  String? get windSpeed;
  @override
  String? get humidity;
  @override
  @JsonKey(ignore: true)
  _$WeatherDataCopyWith<_WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}
