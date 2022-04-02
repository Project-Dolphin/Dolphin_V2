// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_diet_dorm_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DietDormWrapper _$DietDormWrapperFromJson(Map<String, dynamic> json) {
  return _DietDormWrapper.fromJson(json);
}

/// @nodoc
class _$DietDormWrapperTearOff {
  const _$DietDormWrapperTearOff();

  _DietDormWrapper call({DormData? data, String? path}) {
    return _DietDormWrapper(
      data: data,
      path: path,
    );
  }

  DietDormWrapper fromJson(Map<String, Object?> json) {
    return DietDormWrapper.fromJson(json);
  }
}

/// @nodoc
const $DietDormWrapper = _$DietDormWrapperTearOff();

/// @nodoc
mixin _$DietDormWrapper {
  DormData? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DietDormWrapperCopyWith<DietDormWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietDormWrapperCopyWith<$Res> {
  factory $DietDormWrapperCopyWith(
          DietDormWrapper value, $Res Function(DietDormWrapper) then) =
      _$DietDormWrapperCopyWithImpl<$Res>;
  $Res call({DormData? data, String? path});

  $DormDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DietDormWrapperCopyWithImpl<$Res>
    implements $DietDormWrapperCopyWith<$Res> {
  _$DietDormWrapperCopyWithImpl(this._value, this._then);

  final DietDormWrapper _value;
  // ignore: unused_field
  final $Res Function(DietDormWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DormData?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $DormDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DormDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DietDormWrapperCopyWith<$Res>
    implements $DietDormWrapperCopyWith<$Res> {
  factory _$DietDormWrapperCopyWith(
          _DietDormWrapper value, $Res Function(_DietDormWrapper) then) =
      __$DietDormWrapperCopyWithImpl<$Res>;
  @override
  $Res call({DormData? data, String? path});

  @override
  $DormDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$DietDormWrapperCopyWithImpl<$Res>
    extends _$DietDormWrapperCopyWithImpl<$Res>
    implements _$DietDormWrapperCopyWith<$Res> {
  __$DietDormWrapperCopyWithImpl(
      _DietDormWrapper _value, $Res Function(_DietDormWrapper) _then)
      : super(_value, (v) => _then(v as _DietDormWrapper));

  @override
  _DietDormWrapper get _value => super._value as _DietDormWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_DietDormWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DormData?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DietDormWrapper implements _DietDormWrapper {
  _$_DietDormWrapper({this.data, this.path});

  factory _$_DietDormWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_DietDormWrapperFromJson(json);

  @override
  final DormData? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'DietDormWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DietDormWrapper &&
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
  _$DietDormWrapperCopyWith<_DietDormWrapper> get copyWith =>
      __$DietDormWrapperCopyWithImpl<_DietDormWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DietDormWrapperToJson(this);
  }
}

abstract class _DietDormWrapper implements DietDormWrapper {
  factory _DietDormWrapper({DormData? data, String? path}) = _$_DietDormWrapper;

  factory _DietDormWrapper.fromJson(Map<String, dynamic> json) =
      _$_DietDormWrapper.fromJson;

  @override
  DormData? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$DietDormWrapperCopyWith<_DietDormWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
