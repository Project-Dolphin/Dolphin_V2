// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_holiday_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HolidayWrapper _$HolidayWrapperFromJson(Map<String, dynamic> json) {
  return _HolidayWrapper.fromJson(json);
}

/// @nodoc
mixin _$HolidayWrapper {
  List<HolidayData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolidayWrapperCopyWith<HolidayWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayWrapperCopyWith<$Res> {
  factory $HolidayWrapperCopyWith(
          HolidayWrapper value, $Res Function(HolidayWrapper) then) =
      _$HolidayWrapperCopyWithImpl<$Res>;
  $Res call({List<HolidayData>? data});
}

/// @nodoc
class _$HolidayWrapperCopyWithImpl<$Res>
    implements $HolidayWrapperCopyWith<$Res> {
  _$HolidayWrapperCopyWithImpl(this._value, this._then);

  final HolidayWrapper _value;
  // ignore: unused_field
  final $Res Function(HolidayWrapper) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HolidayData>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HolidayWrapperCopyWith<$Res>
    implements $HolidayWrapperCopyWith<$Res> {
  factory _$$_HolidayWrapperCopyWith(
          _$_HolidayWrapper value, $Res Function(_$_HolidayWrapper) then) =
      __$$_HolidayWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<HolidayData>? data});
}

/// @nodoc
class __$$_HolidayWrapperCopyWithImpl<$Res>
    extends _$HolidayWrapperCopyWithImpl<$Res>
    implements _$$_HolidayWrapperCopyWith<$Res> {
  __$$_HolidayWrapperCopyWithImpl(
      _$_HolidayWrapper _value, $Res Function(_$_HolidayWrapper) _then)
      : super(_value, (v) => _then(v as _$_HolidayWrapper));

  @override
  _$_HolidayWrapper get _value => super._value as _$_HolidayWrapper;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_HolidayWrapper(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HolidayData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HolidayWrapper implements _HolidayWrapper {
  _$_HolidayWrapper({final List<HolidayData>? data}) : _data = data;

  factory _$_HolidayWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_HolidayWrapperFromJson(json);

  final List<HolidayData>? _data;
  @override
  List<HolidayData>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HolidayWrapper(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HolidayWrapper &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_HolidayWrapperCopyWith<_$_HolidayWrapper> get copyWith =>
      __$$_HolidayWrapperCopyWithImpl<_$_HolidayWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HolidayWrapperToJson(this);
  }
}

abstract class _HolidayWrapper implements HolidayWrapper {
  factory _HolidayWrapper({final List<HolidayData>? data}) = _$_HolidayWrapper;

  factory _HolidayWrapper.fromJson(Map<String, dynamic> json) =
      _$_HolidayWrapper.fromJson;

  @override
  List<HolidayData>? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HolidayWrapperCopyWith<_$_HolidayWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
