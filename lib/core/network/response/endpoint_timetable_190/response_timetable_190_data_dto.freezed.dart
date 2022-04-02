// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_timetable_190_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimeTableData _$TimeTableDataFromJson(Map<String, dynamic> json) {
  return _TimeTableData.fromJson(json);
}

/// @nodoc
class _$TimeTableDataTearOff {
  const _$TimeTableDataTearOff();

  _TimeTableData call({String? type, String? time}) {
    return _TimeTableData(
      type: type,
      time: time,
    );
  }

  TimeTableData fromJson(Map<String, Object?> json) {
    return TimeTableData.fromJson(json);
  }
}

/// @nodoc
const $TimeTableData = _$TimeTableDataTearOff();

/// @nodoc
mixin _$TimeTableData {
  String? get type => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeTableDataCopyWith<TimeTableData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTableDataCopyWith<$Res> {
  factory $TimeTableDataCopyWith(
          TimeTableData value, $Res Function(TimeTableData) then) =
      _$TimeTableDataCopyWithImpl<$Res>;
  $Res call({String? type, String? time});
}

/// @nodoc
class _$TimeTableDataCopyWithImpl<$Res>
    implements $TimeTableDataCopyWith<$Res> {
  _$TimeTableDataCopyWithImpl(this._value, this._then);

  final TimeTableData _value;
  // ignore: unused_field
  final $Res Function(TimeTableData) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TimeTableDataCopyWith<$Res>
    implements $TimeTableDataCopyWith<$Res> {
  factory _$TimeTableDataCopyWith(
          _TimeTableData value, $Res Function(_TimeTableData) then) =
      __$TimeTableDataCopyWithImpl<$Res>;
  @override
  $Res call({String? type, String? time});
}

/// @nodoc
class __$TimeTableDataCopyWithImpl<$Res>
    extends _$TimeTableDataCopyWithImpl<$Res>
    implements _$TimeTableDataCopyWith<$Res> {
  __$TimeTableDataCopyWithImpl(
      _TimeTableData _value, $Res Function(_TimeTableData) _then)
      : super(_value, (v) => _then(v as _TimeTableData));

  @override
  _TimeTableData get _value => super._value as _TimeTableData;

  @override
  $Res call({
    Object? type = freezed,
    Object? time = freezed,
  }) {
    return _then(_TimeTableData(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeTableData implements _TimeTableData {
  _$_TimeTableData({this.type, this.time});

  factory _$_TimeTableData.fromJson(Map<String, dynamic> json) =>
      _$$_TimeTableDataFromJson(json);

  @override
  final String? type;
  @override
  final String? time;

  @override
  String toString() {
    return 'TimeTableData(type: $type, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeTableData &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.time, time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(time));

  @JsonKey(ignore: true)
  @override
  _$TimeTableDataCopyWith<_TimeTableData> get copyWith =>
      __$TimeTableDataCopyWithImpl<_TimeTableData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeTableDataToJson(this);
  }
}

abstract class _TimeTableData implements TimeTableData {
  factory _TimeTableData({String? type, String? time}) = _$_TimeTableData;

  factory _TimeTableData.fromJson(Map<String, dynamic> json) =
      _$_TimeTableData.fromJson;

  @override
  String? get type;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$TimeTableDataCopyWith<_TimeTableData> get copyWith =>
      throw _privateConstructorUsedError;
}
