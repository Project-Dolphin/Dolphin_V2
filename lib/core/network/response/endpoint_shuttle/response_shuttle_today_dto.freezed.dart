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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShuttleTodayWrapper _$ShuttleTodayWrapperFromJson(Map<String, dynamic> json) {
  return _ShuttleTodayWrapper.fromJson(json);
}

/// @nodoc
mixin _$ShuttleTodayWrapper {
  List<ShuttleDetailDto> get data => throw _privateConstructorUsedError;

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
  $Res call({List<ShuttleDetailDto> data});
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
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ShuttleDetailDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_ShuttleTodayWrapperCopyWith<$Res>
    implements $ShuttleTodayWrapperCopyWith<$Res> {
  factory _$$_ShuttleTodayWrapperCopyWith(_$_ShuttleTodayWrapper value,
          $Res Function(_$_ShuttleTodayWrapper) then) =
      __$$_ShuttleTodayWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<ShuttleDetailDto> data});
}

/// @nodoc
class __$$_ShuttleTodayWrapperCopyWithImpl<$Res>
    extends _$ShuttleTodayWrapperCopyWithImpl<$Res>
    implements _$$_ShuttleTodayWrapperCopyWith<$Res> {
  __$$_ShuttleTodayWrapperCopyWithImpl(_$_ShuttleTodayWrapper _value,
      $Res Function(_$_ShuttleTodayWrapper) _then)
      : super(_value, (v) => _then(v as _$_ShuttleTodayWrapper));

  @override
  _$_ShuttleTodayWrapper get _value => super._value as _$_ShuttleTodayWrapper;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_ShuttleTodayWrapper(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ShuttleDetailDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShuttleTodayWrapper implements _ShuttleTodayWrapper {
  _$_ShuttleTodayWrapper(
      {final List<ShuttleDetailDto> data = const <ShuttleDetailDto>[]})
      : _data = data;

  factory _$_ShuttleTodayWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_ShuttleTodayWrapperFromJson(json);

  final List<ShuttleDetailDto> _data;
  @override
  @JsonKey()
  List<ShuttleDetailDto> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ShuttleTodayWrapper(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShuttleTodayWrapper &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_ShuttleTodayWrapperCopyWith<_$_ShuttleTodayWrapper> get copyWith =>
      __$$_ShuttleTodayWrapperCopyWithImpl<_$_ShuttleTodayWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShuttleTodayWrapperToJson(this);
  }
}

abstract class _ShuttleTodayWrapper implements ShuttleTodayWrapper {
  factory _ShuttleTodayWrapper({final List<ShuttleDetailDto> data}) =
      _$_ShuttleTodayWrapper;

  factory _ShuttleTodayWrapper.fromJson(Map<String, dynamic> json) =
      _$_ShuttleTodayWrapper.fromJson;

  @override
  List<ShuttleDetailDto> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ShuttleTodayWrapperCopyWith<_$_ShuttleTodayWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
