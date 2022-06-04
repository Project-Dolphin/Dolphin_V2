// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_next_depart_190_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NextDepart190Wrapper _$NextDepart190WrapperFromJson(Map<String, dynamic> json) {
  return _NextDepart190Wrapper.fromJson(json);
}

/// @nodoc
class _$NextDepart190WrapperTearOff {
  const _$NextDepart190WrapperTearOff();

  _NextDepart190Wrapper call(
      {List<DepartBusInfo>? nextDepartBus, String? path}) {
    return _NextDepart190Wrapper(
      nextDepartBus: nextDepartBus,
      path: path,
    );
  }

  NextDepart190Wrapper fromJson(Map<String, Object?> json) {
    return NextDepart190Wrapper.fromJson(json);
  }
}

/// @nodoc
const $NextDepart190Wrapper = _$NextDepart190WrapperTearOff();

/// @nodoc
mixin _$NextDepart190Wrapper {
  List<DepartBusInfo>? get nextDepartBus => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextDepart190WrapperCopyWith<NextDepart190Wrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextDepart190WrapperCopyWith<$Res> {
  factory $NextDepart190WrapperCopyWith(NextDepart190Wrapper value,
          $Res Function(NextDepart190Wrapper) then) =
      _$NextDepart190WrapperCopyWithImpl<$Res>;
  $Res call({List<DepartBusInfo>? nextDepartBus, String? path});
}

/// @nodoc
class _$NextDepart190WrapperCopyWithImpl<$Res>
    implements $NextDepart190WrapperCopyWith<$Res> {
  _$NextDepart190WrapperCopyWithImpl(this._value, this._then);

  final NextDepart190Wrapper _value;
  // ignore: unused_field
  final $Res Function(NextDepart190Wrapper) _then;

  @override
  $Res call({
    Object? nextDepartBus = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      nextDepartBus: nextDepartBus == freezed
          ? _value.nextDepartBus
          : nextDepartBus // ignore: cast_nullable_to_non_nullable
              as List<DepartBusInfo>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NextDepart190WrapperCopyWith<$Res>
    implements $NextDepart190WrapperCopyWith<$Res> {
  factory _$NextDepart190WrapperCopyWith(_NextDepart190Wrapper value,
          $Res Function(_NextDepart190Wrapper) then) =
      __$NextDepart190WrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<DepartBusInfo>? nextDepartBus, String? path});
}

/// @nodoc
class __$NextDepart190WrapperCopyWithImpl<$Res>
    extends _$NextDepart190WrapperCopyWithImpl<$Res>
    implements _$NextDepart190WrapperCopyWith<$Res> {
  __$NextDepart190WrapperCopyWithImpl(
      _NextDepart190Wrapper _value, $Res Function(_NextDepart190Wrapper) _then)
      : super(_value, (v) => _then(v as _NextDepart190Wrapper));

  @override
  _NextDepart190Wrapper get _value => super._value as _NextDepart190Wrapper;

  @override
  $Res call({
    Object? nextDepartBus = freezed,
    Object? path = freezed,
  }) {
    return _then(_NextDepart190Wrapper(
      nextDepartBus: nextDepartBus == freezed
          ? _value.nextDepartBus
          : nextDepartBus // ignore: cast_nullable_to_non_nullable
              as List<DepartBusInfo>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NextDepart190Wrapper implements _NextDepart190Wrapper {
  _$_NextDepart190Wrapper({this.nextDepartBus, this.path});

  factory _$_NextDepart190Wrapper.fromJson(Map<String, dynamic> json) =>
      _$$_NextDepart190WrapperFromJson(json);

  @override
  final List<DepartBusInfo>? nextDepartBus;
  @override
  final String? path;

  @override
  String toString() {
    return 'NextDepart190Wrapper(nextDepartBus: $nextDepartBus, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NextDepart190Wrapper &&
            const DeepCollectionEquality()
                .equals(other.nextDepartBus, nextDepartBus) &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nextDepartBus),
      const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$NextDepart190WrapperCopyWith<_NextDepart190Wrapper> get copyWith =>
      __$NextDepart190WrapperCopyWithImpl<_NextDepart190Wrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NextDepart190WrapperToJson(this);
  }
}

abstract class _NextDepart190Wrapper implements NextDepart190Wrapper {
  factory _NextDepart190Wrapper(
      {List<DepartBusInfo>? nextDepartBus,
      String? path}) = _$_NextDepart190Wrapper;

  factory _NextDepart190Wrapper.fromJson(Map<String, dynamic> json) =
      _$_NextDepart190Wrapper.fromJson;

  @override
  List<DepartBusInfo>? get nextDepartBus;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$NextDepart190WrapperCopyWith<_NextDepart190Wrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
