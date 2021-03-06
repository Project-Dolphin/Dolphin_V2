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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeWrapper _$NoticeWrapperFromJson(Map<String, dynamic> json) {
  return _NoticeWrapper.fromJson(json);
}

/// @nodoc
mixin _$NoticeWrapper {
  List<NoticeData> get data => throw _privateConstructorUsedError;

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
  $Res call({List<NoticeData> data});
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
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NoticeData>,
    ));
  }
}

/// @nodoc
abstract class _$$_NoticeWrapperCopyWith<$Res>
    implements $NoticeWrapperCopyWith<$Res> {
  factory _$$_NoticeWrapperCopyWith(
          _$_NoticeWrapper value, $Res Function(_$_NoticeWrapper) then) =
      __$$_NoticeWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<NoticeData> data});
}

/// @nodoc
class __$$_NoticeWrapperCopyWithImpl<$Res>
    extends _$NoticeWrapperCopyWithImpl<$Res>
    implements _$$_NoticeWrapperCopyWith<$Res> {
  __$$_NoticeWrapperCopyWithImpl(
      _$_NoticeWrapper _value, $Res Function(_$_NoticeWrapper) _then)
      : super(_value, (v) => _then(v as _$_NoticeWrapper));

  @override
  _$_NoticeWrapper get _value => super._value as _$_NoticeWrapper;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_NoticeWrapper(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NoticeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeWrapper implements _NoticeWrapper {
  _$_NoticeWrapper({final List<NoticeData> data = const <NoticeData>[]})
      : _data = data;

  factory _$_NoticeWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeWrapperFromJson(json);

  final List<NoticeData> _data;
  @override
  @JsonKey()
  List<NoticeData> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NoticeWrapper(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeWrapper &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_NoticeWrapperCopyWith<_$_NoticeWrapper> get copyWith =>
      __$$_NoticeWrapperCopyWithImpl<_$_NoticeWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeWrapperToJson(this);
  }
}

abstract class _NoticeWrapper implements NoticeWrapper {
  factory _NoticeWrapper({final List<NoticeData> data}) = _$_NoticeWrapper;

  factory _NoticeWrapper.fromJson(Map<String, dynamic> json) =
      _$_NoticeWrapper.fromJson;

  @override
  List<NoticeData> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeWrapperCopyWith<_$_NoticeWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
