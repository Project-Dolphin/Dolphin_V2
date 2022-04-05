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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShuttleNextWrapper _$ShuttleNextWrapperFromJson(Map<String, dynamic> json) {
  return _ShuttleNextWrapper.fromJson(json);
}

/// @nodoc
class _$ShuttleNextWrapperTearOff {
  const _$ShuttleNextWrapperTearOff();

  _ShuttleNextWrapper call({List<ShuttleDataDto>? data, String? path}) {
    return _ShuttleNextWrapper(
      data: data,
      path: path,
    );
  }

  ShuttleNextWrapper fromJson(Map<String, Object?> json) {
    return ShuttleNextWrapper.fromJson(json);
  }
}

/// @nodoc
const $ShuttleNextWrapper = _$ShuttleNextWrapperTearOff();

/// @nodoc
mixin _$ShuttleNextWrapper {
  List<ShuttleDataDto>? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

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
  $Res call({List<ShuttleDataDto>? data, String? path});
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
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ShuttleDataDto>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShuttleNextWrapperCopyWith<$Res>
    implements $ShuttleNextWrapperCopyWith<$Res> {
  factory _$ShuttleNextWrapperCopyWith(
          _ShuttleNextWrapper value, $Res Function(_ShuttleNextWrapper) then) =
      __$ShuttleNextWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<ShuttleDataDto>? data, String? path});
}

/// @nodoc
class __$ShuttleNextWrapperCopyWithImpl<$Res>
    extends _$ShuttleNextWrapperCopyWithImpl<$Res>
    implements _$ShuttleNextWrapperCopyWith<$Res> {
  __$ShuttleNextWrapperCopyWithImpl(
      _ShuttleNextWrapper _value, $Res Function(_ShuttleNextWrapper) _then)
      : super(_value, (v) => _then(v as _ShuttleNextWrapper));

  @override
  _ShuttleNextWrapper get _value => super._value as _ShuttleNextWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_ShuttleNextWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ShuttleDataDto>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShuttleNextWrapper implements _ShuttleNextWrapper {
  _$_ShuttleNextWrapper({this.data, this.path});

  factory _$_ShuttleNextWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_ShuttleNextWrapperFromJson(json);

  @override
  final List<ShuttleDataDto>? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'ShuttleNextWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShuttleNextWrapper &&
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
  _$ShuttleNextWrapperCopyWith<_ShuttleNextWrapper> get copyWith =>
      __$ShuttleNextWrapperCopyWithImpl<_ShuttleNextWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShuttleNextWrapperToJson(this);
  }
}

abstract class _ShuttleNextWrapper implements ShuttleNextWrapper {
  factory _ShuttleNextWrapper({List<ShuttleDataDto>? data, String? path}) =
      _$_ShuttleNextWrapper;

  factory _ShuttleNextWrapper.fromJson(Map<String, dynamic> json) =
      _$_ShuttleNextWrapper.fromJson;

  @override
  List<ShuttleDataDto>? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$ShuttleNextWrapperCopyWith<_ShuttleNextWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
