// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_businfo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusInfoWrapper _$BusInfoWrapperFromJson(Map<String, dynamic> json) {
  return _BusInfoWrapper.fromJson(json);
}

/// @nodoc
class _$BusInfoWrapperTearOff {
  const _$BusInfoWrapperTearOff();

  _BusInfoWrapper call({List<BusInfoData>? data, String? path}) {
    return _BusInfoWrapper(
      data: data,
      path: path,
    );
  }

  BusInfoWrapper fromJson(Map<String, Object?> json) {
    return BusInfoWrapper.fromJson(json);
  }
}

/// @nodoc
const $BusInfoWrapper = _$BusInfoWrapperTearOff();

/// @nodoc
mixin _$BusInfoWrapper {
  List<BusInfoData>? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusInfoWrapperCopyWith<BusInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusInfoWrapperCopyWith<$Res> {
  factory $BusInfoWrapperCopyWith(
          BusInfoWrapper value, $Res Function(BusInfoWrapper) then) =
      _$BusInfoWrapperCopyWithImpl<$Res>;
  $Res call({List<BusInfoData>? data, String? path});
}

/// @nodoc
class _$BusInfoWrapperCopyWithImpl<$Res>
    implements $BusInfoWrapperCopyWith<$Res> {
  _$BusInfoWrapperCopyWithImpl(this._value, this._then);

  final BusInfoWrapper _value;
  // ignore: unused_field
  final $Res Function(BusInfoWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BusInfoData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BusInfoWrapperCopyWith<$Res>
    implements $BusInfoWrapperCopyWith<$Res> {
  factory _$BusInfoWrapperCopyWith(
          _BusInfoWrapper value, $Res Function(_BusInfoWrapper) then) =
      __$BusInfoWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<BusInfoData>? data, String? path});
}

/// @nodoc
class __$BusInfoWrapperCopyWithImpl<$Res>
    extends _$BusInfoWrapperCopyWithImpl<$Res>
    implements _$BusInfoWrapperCopyWith<$Res> {
  __$BusInfoWrapperCopyWithImpl(
      _BusInfoWrapper _value, $Res Function(_BusInfoWrapper) _then)
      : super(_value, (v) => _then(v as _BusInfoWrapper));

  @override
  _BusInfoWrapper get _value => super._value as _BusInfoWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_BusInfoWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BusInfoData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusInfoWrapper implements _BusInfoWrapper {
  _$_BusInfoWrapper({this.data, this.path});

  factory _$_BusInfoWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_BusInfoWrapperFromJson(json);

  @override
  final List<BusInfoData>? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'BusInfoWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BusInfoWrapper &&
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
  _$BusInfoWrapperCopyWith<_BusInfoWrapper> get copyWith =>
      __$BusInfoWrapperCopyWithImpl<_BusInfoWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusInfoWrapperToJson(this);
  }
}

abstract class _BusInfoWrapper implements BusInfoWrapper {
  factory _BusInfoWrapper({List<BusInfoData>? data, String? path}) =
      _$_BusInfoWrapper;

  factory _BusInfoWrapper.fromJson(Map<String, dynamic> json) =
      _$_BusInfoWrapper.fromJson;

  @override
  List<BusInfoData>? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$BusInfoWrapperCopyWith<_BusInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
