// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_diet_society_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DietSocietyWrapper _$DietSocietyWrapperFromJson(Map<String, dynamic> json) {
  return _DietSocietyWrapper.fromJson(json);
}

/// @nodoc
class _$DietSocietyWrapperTearOff {
  const _$DietSocietyWrapperTearOff();

  _DietSocietyWrapper call({CafeData? data, String? path}) {
    return _DietSocietyWrapper(
      data: data,
      path: path,
    );
  }

  DietSocietyWrapper fromJson(Map<String, Object?> json) {
    return DietSocietyWrapper.fromJson(json);
  }
}

/// @nodoc
const $DietSocietyWrapper = _$DietSocietyWrapperTearOff();

/// @nodoc
mixin _$DietSocietyWrapper {
  CafeData? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DietSocietyWrapperCopyWith<DietSocietyWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietSocietyWrapperCopyWith<$Res> {
  factory $DietSocietyWrapperCopyWith(
          DietSocietyWrapper value, $Res Function(DietSocietyWrapper) then) =
      _$DietSocietyWrapperCopyWithImpl<$Res>;
  $Res call({CafeData? data, String? path});

  $CafeDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DietSocietyWrapperCopyWithImpl<$Res>
    implements $DietSocietyWrapperCopyWith<$Res> {
  _$DietSocietyWrapperCopyWithImpl(this._value, this._then);

  final DietSocietyWrapper _value;
  // ignore: unused_field
  final $Res Function(DietSocietyWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CafeData?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $CafeDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CafeDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$DietSocietyWrapperCopyWith<$Res>
    implements $DietSocietyWrapperCopyWith<$Res> {
  factory _$DietSocietyWrapperCopyWith(
          _DietSocietyWrapper value, $Res Function(_DietSocietyWrapper) then) =
      __$DietSocietyWrapperCopyWithImpl<$Res>;
  @override
  $Res call({CafeData? data, String? path});

  @override
  $CafeDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$DietSocietyWrapperCopyWithImpl<$Res>
    extends _$DietSocietyWrapperCopyWithImpl<$Res>
    implements _$DietSocietyWrapperCopyWith<$Res> {
  __$DietSocietyWrapperCopyWithImpl(
      _DietSocietyWrapper _value, $Res Function(_DietSocietyWrapper) _then)
      : super(_value, (v) => _then(v as _DietSocietyWrapper));

  @override
  _DietSocietyWrapper get _value => super._value as _DietSocietyWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_DietSocietyWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CafeData?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DietSocietyWrapper implements _DietSocietyWrapper {
  _$_DietSocietyWrapper({this.data, this.path});

  factory _$_DietSocietyWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_DietSocietyWrapperFromJson(json);

  @override
  final CafeData? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'DietSocietyWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DietSocietyWrapper &&
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
  _$DietSocietyWrapperCopyWith<_DietSocietyWrapper> get copyWith =>
      __$DietSocietyWrapperCopyWithImpl<_DietSocietyWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DietSocietyWrapperToJson(this);
  }
}

abstract class _DietSocietyWrapper implements DietSocietyWrapper {
  factory _DietSocietyWrapper({CafeData? data, String? path}) =
      _$_DietSocietyWrapper;

  factory _DietSocietyWrapper.fromJson(Map<String, dynamic> json) =
      _$_DietSocietyWrapper.fromJson;

  @override
  CafeData? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$DietSocietyWrapperCopyWith<_DietSocietyWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
