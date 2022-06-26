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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShuttleDetailDto _$ShuttleDetailDtoFromJson(Map<String, dynamic> json) {
  return _ShuttleDetailDto.fromJson(json);
}

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
abstract class _$$_ShuttleDetailDtoCopyWith<$Res>
    implements $ShuttleDetailDtoCopyWith<$Res> {
  factory _$$_ShuttleDetailDtoCopyWith(
          _$_ShuttleDetailDto value, $Res Function(_$_ShuttleDetailDto) then) =
      __$$_ShuttleDetailDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? time});
}

/// @nodoc
class __$$_ShuttleDetailDtoCopyWithImpl<$Res>
    extends _$ShuttleDetailDtoCopyWithImpl<$Res>
    implements _$$_ShuttleDetailDtoCopyWith<$Res> {
  __$$_ShuttleDetailDtoCopyWithImpl(
      _$_ShuttleDetailDto _value, $Res Function(_$_ShuttleDetailDto) _then)
      : super(_value, (v) => _then(v as _$_ShuttleDetailDto));

  @override
  _$_ShuttleDetailDto get _value => super._value as _$_ShuttleDetailDto;

  @override
  $Res call({
    Object? type = freezed,
    Object? time = freezed,
  }) {
    return _then(_$_ShuttleDetailDto(
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
            other is _$_ShuttleDetailDto &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$$_ShuttleDetailDtoCopyWith<_$_ShuttleDetailDto> get copyWith =>
      __$$_ShuttleDetailDtoCopyWithImpl<_$_ShuttleDetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShuttleDetailDtoToJson(this);
  }
}

abstract class _ShuttleDetailDto implements ShuttleDetailDto {
  factory _ShuttleDetailDto({final String? type, final String? time}) =
      _$_ShuttleDetailDto;

  factory _ShuttleDetailDto.fromJson(Map<String, dynamic> json) =
      _$_ShuttleDetailDto.fromJson;

  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShuttleDetailDtoCopyWith<_$_ShuttleDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
