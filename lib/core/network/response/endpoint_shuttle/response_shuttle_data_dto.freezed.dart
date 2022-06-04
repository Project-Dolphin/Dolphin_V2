// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_shuttle_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShuttleDataDto _$ShuttleDataDtoFromJson(Map<String, dynamic> json) {
  return _ShuttleDataDto.fromJson(json);
}

/// @nodoc
class _$ShuttleDataDtoTearOff {
  const _$ShuttleDataDtoTearOff();

  _ShuttleDataDto call(
      {String? destination, String? time, int? remainMinutes}) {
    return _ShuttleDataDto(
      destination: destination,
      time: time,
      remainMinutes: remainMinutes,
    );
  }

  ShuttleDataDto fromJson(Map<String, Object?> json) {
    return ShuttleDataDto.fromJson(json);
  }
}

/// @nodoc
const $ShuttleDataDto = _$ShuttleDataDtoTearOff();

/// @nodoc
mixin _$ShuttleDataDto {
  String? get destination =>
      throw _privateConstructorUsedError; // 목적지 ("하리" | "동삼시장")
  String? get time => throw _privateConstructorUsedError; // 셔틀 출발 시간
  int? get remainMinutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShuttleDataDtoCopyWith<ShuttleDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShuttleDataDtoCopyWith<$Res> {
  factory $ShuttleDataDtoCopyWith(
          ShuttleDataDto value, $Res Function(ShuttleDataDto) then) =
      _$ShuttleDataDtoCopyWithImpl<$Res>;
  $Res call({String? destination, String? time, int? remainMinutes});
}

/// @nodoc
class _$ShuttleDataDtoCopyWithImpl<$Res>
    implements $ShuttleDataDtoCopyWith<$Res> {
  _$ShuttleDataDtoCopyWithImpl(this._value, this._then);

  final ShuttleDataDto _value;
  // ignore: unused_field
  final $Res Function(ShuttleDataDto) _then;

  @override
  $Res call({
    Object? destination = freezed,
    Object? time = freezed,
    Object? remainMinutes = freezed,
  }) {
    return _then(_value.copyWith(
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      remainMinutes: remainMinutes == freezed
          ? _value.remainMinutes
          : remainMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ShuttleDataDtoCopyWith<$Res>
    implements $ShuttleDataDtoCopyWith<$Res> {
  factory _$ShuttleDataDtoCopyWith(
          _ShuttleDataDto value, $Res Function(_ShuttleDataDto) then) =
      __$ShuttleDataDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? destination, String? time, int? remainMinutes});
}

/// @nodoc
class __$ShuttleDataDtoCopyWithImpl<$Res>
    extends _$ShuttleDataDtoCopyWithImpl<$Res>
    implements _$ShuttleDataDtoCopyWith<$Res> {
  __$ShuttleDataDtoCopyWithImpl(
      _ShuttleDataDto _value, $Res Function(_ShuttleDataDto) _then)
      : super(_value, (v) => _then(v as _ShuttleDataDto));

  @override
  _ShuttleDataDto get _value => super._value as _ShuttleDataDto;

  @override
  $Res call({
    Object? destination = freezed,
    Object? time = freezed,
    Object? remainMinutes = freezed,
  }) {
    return _then(_ShuttleDataDto(
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      remainMinutes: remainMinutes == freezed
          ? _value.remainMinutes
          : remainMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShuttleDataDto implements _ShuttleDataDto {
  _$_ShuttleDataDto({this.destination, this.time, this.remainMinutes});

  factory _$_ShuttleDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShuttleDataDtoFromJson(json);

  @override
  final String? destination;
  @override // 목적지 ("하리" | "동삼시장")
  final String? time;
  @override // 셔틀 출발 시간
  final int? remainMinutes;

  @override
  String toString() {
    return 'ShuttleDataDto(destination: $destination, time: $time, remainMinutes: $remainMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShuttleDataDto &&
            const DeepCollectionEquality()
                .equals(other.destination, destination) &&
            const DeepCollectionEquality().equals(other.time, time) &&
            const DeepCollectionEquality()
                .equals(other.remainMinutes, remainMinutes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(destination),
      const DeepCollectionEquality().hash(time),
      const DeepCollectionEquality().hash(remainMinutes));

  @JsonKey(ignore: true)
  @override
  _$ShuttleDataDtoCopyWith<_ShuttleDataDto> get copyWith =>
      __$ShuttleDataDtoCopyWithImpl<_ShuttleDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShuttleDataDtoToJson(this);
  }
}

abstract class _ShuttleDataDto implements ShuttleDataDto {
  factory _ShuttleDataDto(
      {String? destination,
      String? time,
      int? remainMinutes}) = _$_ShuttleDataDto;

  factory _ShuttleDataDto.fromJson(Map<String, dynamic> json) =
      _$_ShuttleDataDto.fromJson;

  @override
  String? get destination;
  @override // 목적지 ("하리" | "동삼시장")
  String? get time;
  @override // 셔틀 출발 시간
  int? get remainMinutes;
  @override
  @JsonKey(ignore: true)
  _$ShuttleDataDtoCopyWith<_ShuttleDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
