// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_latest_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatestWrapper _$LatestWrapperFromJson(Map<String, dynamic> json) {
  return _LatestWrapper.fromJson(json);
}

/// @nodoc
mixin _$LatestWrapper {
  String? get today => throw _privateConstructorUsedError;
  List<LatestData> get calendar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatestWrapperCopyWith<LatestWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestWrapperCopyWith<$Res> {
  factory $LatestWrapperCopyWith(
          LatestWrapper value, $Res Function(LatestWrapper) then) =
      _$LatestWrapperCopyWithImpl<$Res>;
  $Res call({String? today, List<LatestData> calendar});
}

/// @nodoc
class _$LatestWrapperCopyWithImpl<$Res>
    implements $LatestWrapperCopyWith<$Res> {
  _$LatestWrapperCopyWithImpl(this._value, this._then);

  final LatestWrapper _value;
  // ignore: unused_field
  final $Res Function(LatestWrapper) _then;

  @override
  $Res call({
    Object? today = freezed,
    Object? calendar = freezed,
  }) {
    return _then(_value.copyWith(
      today: today == freezed
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as String?,
      calendar: calendar == freezed
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as List<LatestData>,
    ));
  }
}

/// @nodoc
abstract class _$$_LatestWrapperCopyWith<$Res>
    implements $LatestWrapperCopyWith<$Res> {
  factory _$$_LatestWrapperCopyWith(
          _$_LatestWrapper value, $Res Function(_$_LatestWrapper) then) =
      __$$_LatestWrapperCopyWithImpl<$Res>;
  @override
  $Res call({String? today, List<LatestData> calendar});
}

/// @nodoc
class __$$_LatestWrapperCopyWithImpl<$Res>
    extends _$LatestWrapperCopyWithImpl<$Res>
    implements _$$_LatestWrapperCopyWith<$Res> {
  __$$_LatestWrapperCopyWithImpl(
      _$_LatestWrapper _value, $Res Function(_$_LatestWrapper) _then)
      : super(_value, (v) => _then(v as _$_LatestWrapper));

  @override
  _$_LatestWrapper get _value => super._value as _$_LatestWrapper;

  @override
  $Res call({
    Object? today = freezed,
    Object? calendar = freezed,
  }) {
    return _then(_$_LatestWrapper(
      today: today == freezed
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as String?,
      calendar: calendar == freezed
          ? _value._calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as List<LatestData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatestWrapper implements _LatestWrapper {
  _$_LatestWrapper(
      {this.today, final List<LatestData> calendar = const <LatestData>[]})
      : _calendar = calendar;

  factory _$_LatestWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_LatestWrapperFromJson(json);

  @override
  final String? today;
  final List<LatestData> _calendar;
  @override
  @JsonKey()
  List<LatestData> get calendar {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calendar);
  }

  @override
  String toString() {
    return 'LatestWrapper(today: $today, calendar: $calendar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatestWrapper &&
            const DeepCollectionEquality().equals(other.today, today) &&
            const DeepCollectionEquality().equals(other._calendar, _calendar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(today),
      const DeepCollectionEquality().hash(_calendar));

  @JsonKey(ignore: true)
  @override
  _$$_LatestWrapperCopyWith<_$_LatestWrapper> get copyWith =>
      __$$_LatestWrapperCopyWithImpl<_$_LatestWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatestWrapperToJson(this);
  }
}

abstract class _LatestWrapper implements LatestWrapper {
  factory _LatestWrapper(
      {final String? today,
      final List<LatestData> calendar}) = _$_LatestWrapper;

  factory _LatestWrapper.fromJson(Map<String, dynamic> json) =
      _$_LatestWrapper.fromJson;

  @override
  String? get today => throw _privateConstructorUsedError;
  @override
  List<LatestData> get calendar => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LatestWrapperCopyWith<_$_LatestWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
