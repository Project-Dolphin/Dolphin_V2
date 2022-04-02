// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_businfo_specific_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecificBusInfoWrapper _$SpecificBusInfoWrapperFromJson(
    Map<String, dynamic> json) {
  return _SpecificBusInfoWrapper.fromJson(json);
}

/// @nodoc
class _$SpecificBusInfoWrapperTearOff {
  const _$SpecificBusInfoWrapperTearOff();

  _SpecificBusInfoWrapper call({List<NodeInfoData>? data, String? path}) {
    return _SpecificBusInfoWrapper(
      data: data,
      path: path,
    );
  }

  SpecificBusInfoWrapper fromJson(Map<String, Object?> json) {
    return SpecificBusInfoWrapper.fromJson(json);
  }
}

/// @nodoc
const $SpecificBusInfoWrapper = _$SpecificBusInfoWrapperTearOff();

/// @nodoc
mixin _$SpecificBusInfoWrapper {
  List<NodeInfoData>? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecificBusInfoWrapperCopyWith<SpecificBusInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificBusInfoWrapperCopyWith<$Res> {
  factory $SpecificBusInfoWrapperCopyWith(SpecificBusInfoWrapper value,
          $Res Function(SpecificBusInfoWrapper) then) =
      _$SpecificBusInfoWrapperCopyWithImpl<$Res>;
  $Res call({List<NodeInfoData>? data, String? path});
}

/// @nodoc
class _$SpecificBusInfoWrapperCopyWithImpl<$Res>
    implements $SpecificBusInfoWrapperCopyWith<$Res> {
  _$SpecificBusInfoWrapperCopyWithImpl(this._value, this._then);

  final SpecificBusInfoWrapper _value;
  // ignore: unused_field
  final $Res Function(SpecificBusInfoWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NodeInfoData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SpecificBusInfoWrapperCopyWith<$Res>
    implements $SpecificBusInfoWrapperCopyWith<$Res> {
  factory _$SpecificBusInfoWrapperCopyWith(_SpecificBusInfoWrapper value,
          $Res Function(_SpecificBusInfoWrapper) then) =
      __$SpecificBusInfoWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<NodeInfoData>? data, String? path});
}

/// @nodoc
class __$SpecificBusInfoWrapperCopyWithImpl<$Res>
    extends _$SpecificBusInfoWrapperCopyWithImpl<$Res>
    implements _$SpecificBusInfoWrapperCopyWith<$Res> {
  __$SpecificBusInfoWrapperCopyWithImpl(_SpecificBusInfoWrapper _value,
      $Res Function(_SpecificBusInfoWrapper) _then)
      : super(_value, (v) => _then(v as _SpecificBusInfoWrapper));

  @override
  _SpecificBusInfoWrapper get _value => super._value as _SpecificBusInfoWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_SpecificBusInfoWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NodeInfoData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpecificBusInfoWrapper implements _SpecificBusInfoWrapper {
  _$_SpecificBusInfoWrapper({this.data, this.path});

  factory _$_SpecificBusInfoWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_SpecificBusInfoWrapperFromJson(json);

  @override
  final List<NodeInfoData>? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'SpecificBusInfoWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpecificBusInfoWrapper &&
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
  _$SpecificBusInfoWrapperCopyWith<_SpecificBusInfoWrapper> get copyWith =>
      __$SpecificBusInfoWrapperCopyWithImpl<_SpecificBusInfoWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecificBusInfoWrapperToJson(this);
  }
}

abstract class _SpecificBusInfoWrapper implements SpecificBusInfoWrapper {
  factory _SpecificBusInfoWrapper({List<NodeInfoData>? data, String? path}) =
      _$_SpecificBusInfoWrapper;

  factory _SpecificBusInfoWrapper.fromJson(Map<String, dynamic> json) =
      _$_SpecificBusInfoWrapper.fromJson;

  @override
  List<NodeInfoData>? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$SpecificBusInfoWrapperCopyWith<_SpecificBusInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
