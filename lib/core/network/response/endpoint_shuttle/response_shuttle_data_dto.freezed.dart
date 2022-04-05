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

  _ShuttleDataDto call({ShuttleDetailDto? previous, ShuttleDetailDto? next}) {
    return _ShuttleDataDto(
      previous: previous,
      next: next,
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
  ShuttleDetailDto? get previous => throw _privateConstructorUsedError;
  ShuttleDetailDto? get next => throw _privateConstructorUsedError;

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
  $Res call({ShuttleDetailDto? previous, ShuttleDetailDto? next});

  $ShuttleDetailDtoCopyWith<$Res>? get previous;
  $ShuttleDetailDtoCopyWith<$Res>? get next;
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
    Object? previous = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as ShuttleDetailDto?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as ShuttleDetailDto?,
    ));
  }

  @override
  $ShuttleDetailDtoCopyWith<$Res>? get previous {
    if (_value.previous == null) {
      return null;
    }

    return $ShuttleDetailDtoCopyWith<$Res>(_value.previous!, (value) {
      return _then(_value.copyWith(previous: value));
    });
  }

  @override
  $ShuttleDetailDtoCopyWith<$Res>? get next {
    if (_value.next == null) {
      return null;
    }

    return $ShuttleDetailDtoCopyWith<$Res>(_value.next!, (value) {
      return _then(_value.copyWith(next: value));
    });
  }
}

/// @nodoc
abstract class _$ShuttleDataDtoCopyWith<$Res>
    implements $ShuttleDataDtoCopyWith<$Res> {
  factory _$ShuttleDataDtoCopyWith(
          _ShuttleDataDto value, $Res Function(_ShuttleDataDto) then) =
      __$ShuttleDataDtoCopyWithImpl<$Res>;
  @override
  $Res call({ShuttleDetailDto? previous, ShuttleDetailDto? next});

  @override
  $ShuttleDetailDtoCopyWith<$Res>? get previous;
  @override
  $ShuttleDetailDtoCopyWith<$Res>? get next;
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
    Object? previous = freezed,
    Object? next = freezed,
  }) {
    return _then(_ShuttleDataDto(
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as ShuttleDetailDto?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as ShuttleDetailDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShuttleDataDto implements _ShuttleDataDto {
  _$_ShuttleDataDto({this.previous, this.next});

  factory _$_ShuttleDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShuttleDataDtoFromJson(json);

  @override
  final ShuttleDetailDto? previous;
  @override
  final ShuttleDetailDto? next;

  @override
  String toString() {
    return 'ShuttleDataDto(previous: $previous, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShuttleDataDto &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other.next, next));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(next));

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
      {ShuttleDetailDto? previous, ShuttleDetailDto? next}) = _$_ShuttleDataDto;

  factory _ShuttleDataDto.fromJson(Map<String, dynamic> json) =
      _$_ShuttleDataDto.fromJson;

  @override
  ShuttleDetailDto? get previous;
  @override
  ShuttleDetailDto? get next;
  @override
  @JsonKey(ignore: true)
  _$ShuttleDataDtoCopyWith<_ShuttleDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
