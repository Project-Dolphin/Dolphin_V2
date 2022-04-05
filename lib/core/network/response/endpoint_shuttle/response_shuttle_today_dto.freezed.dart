// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_shuttle_today_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShuttleTodayWrapper _$ShuttleTodayWrapperFromJson(Map<String, dynamic> json) {
  return _ShuttleTodayWrapper.fromJson(json);
}

/// @nodoc
class _$ShuttleTodayWrapperTearOff {
  const _$ShuttleTodayWrapperTearOff();

  _ShuttleTodayWrapper call({List<ShuttleDetailDto>? data, String? path}) {
    return _ShuttleTodayWrapper(
      data: data,
      path: path,
    );
  }

  ShuttleTodayWrapper fromJson(Map<String, Object?> json) {
    return ShuttleTodayWrapper.fromJson(json);
  }
}

/// @nodoc
const $ShuttleTodayWrapper = _$ShuttleTodayWrapperTearOff();

/// @nodoc
mixin _$ShuttleTodayWrapper {
  List<ShuttleDetailDto>? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShuttleTodayWrapperCopyWith<ShuttleTodayWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShuttleTodayWrapperCopyWith<$Res> {
  factory $ShuttleTodayWrapperCopyWith(
          ShuttleTodayWrapper value, $Res Function(ShuttleTodayWrapper) then) =
      _$ShuttleTodayWrapperCopyWithImpl<$Res>;
  $Res call({List<ShuttleDetailDto>? data, String? path});
}

/// @nodoc
class _$ShuttleTodayWrapperCopyWithImpl<$Res>
    implements $ShuttleTodayWrapperCopyWith<$Res> {
  _$ShuttleTodayWrapperCopyWithImpl(this._value, this._then);

  final ShuttleTodayWrapper _value;
  // ignore: unused_field
  final $Res Function(ShuttleTodayWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ShuttleDetailDto>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ShuttleTodayWrapperCopyWith<$Res>
    implements $ShuttleTodayWrapperCopyWith<$Res> {
  factory _$ShuttleTodayWrapperCopyWith(_ShuttleTodayWrapper value,
          $Res Function(_ShuttleTodayWrapper) then) =
      __$ShuttleTodayWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<ShuttleDetailDto>? data, String? path});
}

/// @nodoc
class __$ShuttleTodayWrapperCopyWithImpl<$Res>
    extends _$ShuttleTodayWrapperCopyWithImpl<$Res>
    implements _$ShuttleTodayWrapperCopyWith<$Res> {
  __$ShuttleTodayWrapperCopyWithImpl(
      _ShuttleTodayWrapper _value, $Res Function(_ShuttleTodayWrapper) _then)
      : super(_value, (v) => _then(v as _ShuttleTodayWrapper));

  @override
  _ShuttleTodayWrapper get _value => super._value as _ShuttleTodayWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_ShuttleTodayWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ShuttleDetailDto>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShuttleTodayWrapper implements _ShuttleTodayWrapper {
  _$_ShuttleTodayWrapper({this.data, this.path});

  factory _$_ShuttleTodayWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_ShuttleTodayWrapperFromJson(json);

  @override
  final List<ShuttleDetailDto>? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'ShuttleTodayWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShuttleTodayWrapper &&
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
  _$ShuttleTodayWrapperCopyWith<_ShuttleTodayWrapper> get copyWith =>
      __$ShuttleTodayWrapperCopyWithImpl<_ShuttleTodayWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShuttleTodayWrapperToJson(this);
  }
}

abstract class _ShuttleTodayWrapper implements ShuttleTodayWrapper {
  factory _ShuttleTodayWrapper({List<ShuttleDetailDto>? data, String? path}) =
      _$_ShuttleTodayWrapper;

  factory _ShuttleTodayWrapper.fromJson(Map<String, dynamic> json) =
      _$_ShuttleTodayWrapper.fromJson;

  @override
  List<ShuttleDetailDto>? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$ShuttleTodayWrapperCopyWith<_ShuttleTodayWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
