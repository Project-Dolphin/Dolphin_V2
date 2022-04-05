// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_shuttle_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShuttleDetailDto _$ShuttleDetailDtoFromJson(Map<String, dynamic> json) {
  return _ShuttleDetailDto.fromJson(json);
}

/// @nodoc
class _$ShuttleDetailDtoTearOff {
  const _$ShuttleDetailDtoTearOff();

  _ShuttleDetailDto call({String? type, String? time}) {
    return _ShuttleDetailDto(
      type: type,
      time: time,
    );
  }

  ShuttleDetailDto fromJson(Map<String, Object?> json) {
    return ShuttleDetailDto.fromJson(json);
  }
}

/// @nodoc
const $ShuttleDetailDto = _$ShuttleDetailDtoTearOff();

/// @nodoc
mixin _$ShuttleDetailDto {
  String? get type => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShuttleDetailDtoCopyWith<ShuttleDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShuttleDetailDtoCopyWith<$Res> {
  factory $ShuttleDetailDtoCopyWith(
          ShuttleDetailDto value, $Res Function(ShuttleDetailDto) then) =
      _$ShuttleDetailDtoCopyWithImpl<$Res>;
  $Res call({String? type, String? time});
}

/// @nodoc
class _$ShuttleDetailDtoCopyWithImpl<$Res>
    implements $ShuttleDetailDtoCopyWith<$Res> {
  _$ShuttleDetailDtoCopyWithImpl(this._value, this._then);

  final ShuttleDetailDto _value;
  // ignore: unused_field
  final $Res Function(ShuttleDetailDto) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShuttleDetailDtoCopyWith<$Res>
    implements $ShuttleDetailDtoCopyWith<$Res> {
  factory _$ShuttleDetailDtoCopyWith(
          _ShuttleDetailDto value, $Res Function(_ShuttleDetailDto) then) =
      __$ShuttleDetailDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? time});
}

/// @nodoc
class __$ShuttleDetailDtoCopyWithImpl<$Res>
    extends _$ShuttleDetailDtoCopyWithImpl<$Res>
    implements _$ShuttleDetailDtoCopyWith<$Res> {
  __$ShuttleDetailDtoCopyWithImpl(
      _ShuttleDetailDto _value, $Res Function(_ShuttleDetailDto) _then)
      : super(_value, (v) => _then(v as _ShuttleDetailDto));

  @override
  _ShuttleDetailDto get _value => super._value as _ShuttleDetailDto;

  @override
  $Res call({
    Object? type = freezed,
    Object? time = freezed,
  }) {
    return _then(_ShuttleDetailDto(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShuttleDetailDto implements _ShuttleDetailDto {
  _$_ShuttleDetailDto({this.type, this.time});

  factory _$_ShuttleDetailDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShuttleDetailDtoFromJson(json);

  @override
  final String? type;
  @override
  final String? time;

  @override
  String toString() {
    return 'ShuttleDetailDto(type: $type, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShuttleDetailDto &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$ShuttleDetailDtoCopyWith<_ShuttleDetailDto> get copyWith =>
      __$ShuttleDetailDtoCopyWithImpl<_ShuttleDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShuttleDetailDtoToJson(this);
  }
}

abstract class _ShuttleDetailDto implements ShuttleDetailDto {
  factory _ShuttleDetailDto({String? type, String? time}) = _$_ShuttleDetailDto;

  factory _ShuttleDetailDto.fromJson(Map<String, dynamic> json) =
      _$_ShuttleDetailDto.fromJson;

  @override
  String? get type;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$ShuttleDetailDtoCopyWith<_ShuttleDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
