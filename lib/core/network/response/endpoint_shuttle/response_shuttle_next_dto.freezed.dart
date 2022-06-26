// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_shuttle_next_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShuttleNextWrapper _$ShuttleNextWrapperFromJson(Map<String, dynamic> json) {
  return _ShuttleNextWrapper.fromJson(json);
}

/// @nodoc
mixin _$ShuttleNextWrapper {
  List<ShuttleDataDto> get nextShuttle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShuttleNextWrapperCopyWith<ShuttleNextWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShuttleNextWrapperCopyWith<$Res> {
  factory $ShuttleNextWrapperCopyWith(
          ShuttleNextWrapper value, $Res Function(ShuttleNextWrapper) then) =
      _$ShuttleNextWrapperCopyWithImpl<$Res>;
  $Res call({List<ShuttleDataDto> nextShuttle});
}

/// @nodoc
class _$ShuttleNextWrapperCopyWithImpl<$Res>
    implements $ShuttleNextWrapperCopyWith<$Res> {
  _$ShuttleNextWrapperCopyWithImpl(this._value, this._then);

  final ShuttleNextWrapper _value;
  // ignore: unused_field
  final $Res Function(ShuttleNextWrapper) _then;

  @override
  $Res call({
    Object? nextShuttle = freezed,
  }) {
    return _then(_value.copyWith(
      nextShuttle: nextShuttle == freezed
          ? _value.nextShuttle
          : nextShuttle // ignore: cast_nullable_to_non_nullable
              as List<ShuttleDataDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_ShuttleNextWrapperCopyWith<$Res>
    implements $ShuttleNextWrapperCopyWith<$Res> {
  factory _$$_ShuttleNextWrapperCopyWith(_$_ShuttleNextWrapper value,
          $Res Function(_$_ShuttleNextWrapper) then) =
      __$$_ShuttleNextWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<ShuttleDataDto> nextShuttle});
}

/// @nodoc
class __$$_ShuttleNextWrapperCopyWithImpl<$Res>
    extends _$ShuttleNextWrapperCopyWithImpl<$Res>
    implements _$$_ShuttleNextWrapperCopyWith<$Res> {
  __$$_ShuttleNextWrapperCopyWithImpl(
      _$_ShuttleNextWrapper _value, $Res Function(_$_ShuttleNextWrapper) _then)
      : super(_value, (v) => _then(v as _$_ShuttleNextWrapper));

  @override
  _$_ShuttleNextWrapper get _value => super._value as _$_ShuttleNextWrapper;

  @override
  $Res call({
    Object? nextShuttle = freezed,
  }) {
    return _then(_$_ShuttleNextWrapper(
      nextShuttle: nextShuttle == freezed
          ? _value._nextShuttle
          : nextShuttle // ignore: cast_nullable_to_non_nullable
              as List<ShuttleDataDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShuttleNextWrapper implements _ShuttleNextWrapper {
  _$_ShuttleNextWrapper(
      {final List<ShuttleDataDto> nextShuttle = const <ShuttleDataDto>[]})
      : _nextShuttle = nextShuttle;

  factory _$_ShuttleNextWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_ShuttleNextWrapperFromJson(json);

  final List<ShuttleDataDto> _nextShuttle;
  @override
  @JsonKey()
  List<ShuttleDataDto> get nextShuttle {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nextShuttle);
  }

  @override
  String toString() {
    return 'ShuttleNextWrapper(nextShuttle: $nextShuttle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShuttleNextWrapper &&
            const DeepCollectionEquality()
                .equals(other._nextShuttle, _nextShuttle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nextShuttle));

  @JsonKey(ignore: true)
  @override
  _$$_ShuttleNextWrapperCopyWith<_$_ShuttleNextWrapper> get copyWith =>
      __$$_ShuttleNextWrapperCopyWithImpl<_$_ShuttleNextWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShuttleNextWrapperToJson(this);
  }
}

abstract class _ShuttleNextWrapper implements ShuttleNextWrapper {
  factory _ShuttleNextWrapper({final List<ShuttleDataDto> nextShuttle}) =
      _$_ShuttleNextWrapper;

  factory _ShuttleNextWrapper.fromJson(Map<String, dynamic> json) =
      _$_ShuttleNextWrapper.fromJson;

  @override
  List<ShuttleDataDto> get nextShuttle => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShuttleNextWrapperCopyWith<_$_ShuttleNextWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
