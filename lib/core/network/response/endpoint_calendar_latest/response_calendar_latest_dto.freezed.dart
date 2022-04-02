// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_latest_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatestWrapper _$LatestWrapperFromJson(Map<String, dynamic> json) {
  return _LatestWrapper.fromJson(json);
}

/// @nodoc
class _$LatestWrapperTearOff {
  const _$LatestWrapperTearOff();

  _LatestWrapper call({List<LatestData>? data, String? path}) {
    return _LatestWrapper(
      data: data,
      path: path,
    );
  }

  LatestWrapper fromJson(Map<String, Object?> json) {
    return LatestWrapper.fromJson(json);
  }
}

/// @nodoc
const $LatestWrapper = _$LatestWrapperTearOff();

/// @nodoc
mixin _$LatestWrapper {
  List<LatestData>? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatestWrapperCopyWith<LatestWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestWrapperCopyWith<$Res> {
  factory $LatestWrapperCopyWith(
          LatestWrapper value, $Res Function(LatestWrapper) then) =
      _$LatestWrapperCopyWithImpl<$Res>;
  $Res call({List<LatestData>? data, String? path});
}

/// @nodoc
class _$LatestWrapperCopyWithImpl<$Res>
    implements $LatestWrapperCopyWith<$Res> {
  _$LatestWrapperCopyWithImpl(this._value, this._then);

  final LatestWrapper _value;
  // ignore: unused_field
  final $Res Function(LatestWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LatestData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LatestWrapperCopyWith<$Res>
    implements $LatestWrapperCopyWith<$Res> {
  factory _$LatestWrapperCopyWith(
          _LatestWrapper value, $Res Function(_LatestWrapper) then) =
      __$LatestWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<LatestData>? data, String? path});
}

/// @nodoc
class __$LatestWrapperCopyWithImpl<$Res>
    extends _$LatestWrapperCopyWithImpl<$Res>
    implements _$LatestWrapperCopyWith<$Res> {
  __$LatestWrapperCopyWithImpl(
      _LatestWrapper _value, $Res Function(_LatestWrapper) _then)
      : super(_value, (v) => _then(v as _LatestWrapper));

  @override
  _LatestWrapper get _value => super._value as _LatestWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_LatestWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LatestData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatestWrapper implements _LatestWrapper {
  _$_LatestWrapper({this.data, this.path});

  factory _$_LatestWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_LatestWrapperFromJson(json);

  @override
  final List<LatestData>? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'LatestWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LatestWrapper &&
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
  _$LatestWrapperCopyWith<_LatestWrapper> get copyWith =>
      __$LatestWrapperCopyWithImpl<_LatestWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatestWrapperToJson(this);
  }
}

abstract class _LatestWrapper implements LatestWrapper {
  factory _LatestWrapper({List<LatestData>? data, String? path}) =
      _$_LatestWrapper;

  factory _LatestWrapper.fromJson(Map<String, dynamic> json) =
      _$_LatestWrapper.fromJson;

  @override
  List<LatestData>? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$LatestWrapperCopyWith<_LatestWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
