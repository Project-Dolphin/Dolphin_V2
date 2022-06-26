// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarSumamryWrapper _$CalendarSumamryWrapperFromJson(
    Map<String, dynamic> json) {
  return _CalendarSumamryWrapper.fromJson(json);
}

/// @nodoc
mixin _$CalendarSumamryWrapper {
  int get index => throw _privateConstructorUsedError;
  List<CalendarSumamry> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarSumamryWrapperCopyWith<CalendarSumamryWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarSumamryWrapperCopyWith<$Res> {
  factory $CalendarSumamryWrapperCopyWith(CalendarSumamryWrapper value,
          $Res Function(CalendarSumamryWrapper) then) =
      _$CalendarSumamryWrapperCopyWithImpl<$Res>;
  $Res call({int index, List<CalendarSumamry> data});
}

/// @nodoc
class _$CalendarSumamryWrapperCopyWithImpl<$Res>
    implements $CalendarSumamryWrapperCopyWith<$Res> {
  _$CalendarSumamryWrapperCopyWithImpl(this._value, this._then);

  final CalendarSumamryWrapper _value;
  // ignore: unused_field
  final $Res Function(CalendarSumamryWrapper) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CalendarSumamry>,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarSumamryWrapperCopyWith<$Res>
    implements $CalendarSumamryWrapperCopyWith<$Res> {
  factory _$$_CalendarSumamryWrapperCopyWith(_$_CalendarSumamryWrapper value,
          $Res Function(_$_CalendarSumamryWrapper) then) =
      __$$_CalendarSumamryWrapperCopyWithImpl<$Res>;
  @override
  $Res call({int index, List<CalendarSumamry> data});
}

/// @nodoc
class __$$_CalendarSumamryWrapperCopyWithImpl<$Res>
    extends _$CalendarSumamryWrapperCopyWithImpl<$Res>
    implements _$$_CalendarSumamryWrapperCopyWith<$Res> {
  __$$_CalendarSumamryWrapperCopyWithImpl(_$_CalendarSumamryWrapper _value,
      $Res Function(_$_CalendarSumamryWrapper) _then)
      : super(_value, (v) => _then(v as _$_CalendarSumamryWrapper));

  @override
  _$_CalendarSumamryWrapper get _value =>
      super._value as _$_CalendarSumamryWrapper;

  @override
  $Res call({
    Object? index = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CalendarSumamryWrapper(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CalendarSumamry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarSumamryWrapper implements _CalendarSumamryWrapper {
  _$_CalendarSumamryWrapper(
      {required this.index,
      final List<CalendarSumamry> data = const <CalendarSumamry>[]})
      : _data = data;

  factory _$_CalendarSumamryWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarSumamryWrapperFromJson(json);

  @override
  final int index;
  final List<CalendarSumamry> _data;
  @override
  @JsonKey()
  List<CalendarSumamry> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CalendarSumamryWrapper(index: $index, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarSumamryWrapper &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarSumamryWrapperCopyWith<_$_CalendarSumamryWrapper> get copyWith =>
      __$$_CalendarSumamryWrapperCopyWithImpl<_$_CalendarSumamryWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarSumamryWrapperToJson(this);
  }
}

abstract class _CalendarSumamryWrapper implements CalendarSumamryWrapper {
  factory _CalendarSumamryWrapper(
      {required final int index,
      final List<CalendarSumamry> data}) = _$_CalendarSumamryWrapper;

  factory _CalendarSumamryWrapper.fromJson(Map<String, dynamic> json) =
      _$_CalendarSumamryWrapper.fromJson;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  List<CalendarSumamry> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarSumamryWrapperCopyWith<_$_CalendarSumamryWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
