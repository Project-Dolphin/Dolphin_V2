// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_notice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeWrapper _$NoticeWrapperFromJson(Map<String, dynamic> json) {
  return _NoticeWrapper.fromJson(json);
}

/// @nodoc
class _$NoticeWrapperTearOff {
  const _$NoticeWrapperTearOff();

  _NoticeWrapper call({List<NoticeData>? data, String? path}) {
    return _NoticeWrapper(
      data: data,
      path: path,
    );
  }

  NoticeWrapper fromJson(Map<String, Object?> json) {
    return NoticeWrapper.fromJson(json);
  }
}

/// @nodoc
const $NoticeWrapper = _$NoticeWrapperTearOff();

/// @nodoc
mixin _$NoticeWrapper {
  List<NoticeData>? get data => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeWrapperCopyWith<NoticeWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeWrapperCopyWith<$Res> {
  factory $NoticeWrapperCopyWith(
          NoticeWrapper value, $Res Function(NoticeWrapper) then) =
      _$NoticeWrapperCopyWithImpl<$Res>;
  $Res call({List<NoticeData>? data, String? path});
}

/// @nodoc
class _$NoticeWrapperCopyWithImpl<$Res>
    implements $NoticeWrapperCopyWith<$Res> {
  _$NoticeWrapperCopyWithImpl(this._value, this._then);

  final NoticeWrapper _value;
  // ignore: unused_field
  final $Res Function(NoticeWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NoticeData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NoticeWrapperCopyWith<$Res>
    implements $NoticeWrapperCopyWith<$Res> {
  factory _$NoticeWrapperCopyWith(
          _NoticeWrapper value, $Res Function(_NoticeWrapper) then) =
      __$NoticeWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<NoticeData>? data, String? path});
}

/// @nodoc
class __$NoticeWrapperCopyWithImpl<$Res>
    extends _$NoticeWrapperCopyWithImpl<$Res>
    implements _$NoticeWrapperCopyWith<$Res> {
  __$NoticeWrapperCopyWithImpl(
      _NoticeWrapper _value, $Res Function(_NoticeWrapper) _then)
      : super(_value, (v) => _then(v as _NoticeWrapper));

  @override
  _NoticeWrapper get _value => super._value as _NoticeWrapper;

  @override
  $Res call({
    Object? data = freezed,
    Object? path = freezed,
  }) {
    return _then(_NoticeWrapper(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NoticeData>?,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeWrapper implements _NoticeWrapper {
  _$_NoticeWrapper({this.data, this.path});

  factory _$_NoticeWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeWrapperFromJson(json);

  @override
  final List<NoticeData>? data;
  @override
  final String? path;

  @override
  String toString() {
    return 'NoticeWrapper(data: $data, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticeWrapper &&
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
  _$NoticeWrapperCopyWith<_NoticeWrapper> get copyWith =>
      __$NoticeWrapperCopyWithImpl<_NoticeWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeWrapperToJson(this);
  }
}

abstract class _NoticeWrapper implements NoticeWrapper {
  factory _NoticeWrapper({List<NoticeData>? data, String? path}) =
      _$_NoticeWrapper;

  factory _NoticeWrapper.fromJson(Map<String, dynamic> json) =
      _$_NoticeWrapper.fromJson;

  @override
  List<NoticeData>? get data;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$NoticeWrapperCopyWith<_NoticeWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
