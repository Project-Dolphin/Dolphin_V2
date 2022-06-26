// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_businfo_specific_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NodeInfoData _$NodeInfoDataFromJson(Map<String, dynamic> json) {
  return _NodeInfoData.fromJson(json);
}

/// @nodoc
mixin _$NodeInfoData {
  String? get busStopName => throw _privateConstructorUsedError;
  int? get min1 => throw _privateConstructorUsedError;
  int? get min2 => throw _privateConstructorUsedError;
  String? get lineno => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeInfoDataCopyWith<NodeInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeInfoDataCopyWith<$Res> {
  factory $NodeInfoDataCopyWith(
          NodeInfoData value, $Res Function(NodeInfoData) then) =
      _$NodeInfoDataCopyWithImpl<$Res>;
  $Res call({String? busStopName, int? min1, int? min2, String? lineno});
}

/// @nodoc
class _$NodeInfoDataCopyWithImpl<$Res> implements $NodeInfoDataCopyWith<$Res> {
  _$NodeInfoDataCopyWithImpl(this._value, this._then);

  final NodeInfoData _value;
  // ignore: unused_field
  final $Res Function(NodeInfoData) _then;

  @override
  $Res call({
    Object? busStopName = freezed,
    Object? min1 = freezed,
    Object? min2 = freezed,
    Object? lineno = freezed,
  }) {
    return _then(_value.copyWith(
      busStopName: busStopName == freezed
          ? _value.busStopName
          : busStopName // ignore: cast_nullable_to_non_nullable
              as String?,
      min1: min1 == freezed
          ? _value.min1
          : min1 // ignore: cast_nullable_to_non_nullable
              as int?,
      min2: min2 == freezed
          ? _value.min2
          : min2 // ignore: cast_nullable_to_non_nullable
              as int?,
      lineno: lineno == freezed
          ? _value.lineno
          : lineno // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NodeInfoDataCopyWith<$Res>
    implements $NodeInfoDataCopyWith<$Res> {
  factory _$$_NodeInfoDataCopyWith(
          _$_NodeInfoData value, $Res Function(_$_NodeInfoData) then) =
      __$$_NodeInfoDataCopyWithImpl<$Res>;
  @override
  $Res call({String? busStopName, int? min1, int? min2, String? lineno});
}

/// @nodoc
class __$$_NodeInfoDataCopyWithImpl<$Res>
    extends _$NodeInfoDataCopyWithImpl<$Res>
    implements _$$_NodeInfoDataCopyWith<$Res> {
  __$$_NodeInfoDataCopyWithImpl(
      _$_NodeInfoData _value, $Res Function(_$_NodeInfoData) _then)
      : super(_value, (v) => _then(v as _$_NodeInfoData));

  @override
  _$_NodeInfoData get _value => super._value as _$_NodeInfoData;

  @override
  $Res call({
    Object? busStopName = freezed,
    Object? min1 = freezed,
    Object? min2 = freezed,
    Object? lineno = freezed,
  }) {
    return _then(_$_NodeInfoData(
      busStopName: busStopName == freezed
          ? _value.busStopName
          : busStopName // ignore: cast_nullable_to_non_nullable
              as String?,
      min1: min1 == freezed
          ? _value.min1
          : min1 // ignore: cast_nullable_to_non_nullable
              as int?,
      min2: min2 == freezed
          ? _value.min2
          : min2 // ignore: cast_nullable_to_non_nullable
              as int?,
      lineno: lineno == freezed
          ? _value.lineno
          : lineno // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NodeInfoData implements _NodeInfoData {
  _$_NodeInfoData({this.busStopName, this.min1, this.min2, this.lineno});

  factory _$_NodeInfoData.fromJson(Map<String, dynamic> json) =>
      _$$_NodeInfoDataFromJson(json);

  @override
  final String? busStopName;
  @override
  final int? min1;
  @override
  final int? min2;
  @override
  final String? lineno;

  @override
  String toString() {
    return 'NodeInfoData(busStopName: $busStopName, min1: $min1, min2: $min2, lineno: $lineno)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NodeInfoData &&
            const DeepCollectionEquality()
                .equals(other.busStopName, busStopName) &&
            const DeepCollectionEquality().equals(other.min1, min1) &&
            const DeepCollectionEquality().equals(other.min2, min2) &&
            const DeepCollectionEquality().equals(other.lineno, lineno));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(busStopName),
      const DeepCollectionEquality().hash(min1),
      const DeepCollectionEquality().hash(min2),
      const DeepCollectionEquality().hash(lineno));

  @JsonKey(ignore: true)
  @override
  _$$_NodeInfoDataCopyWith<_$_NodeInfoData> get copyWith =>
      __$$_NodeInfoDataCopyWithImpl<_$_NodeInfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NodeInfoDataToJson(this);
  }
}

abstract class _NodeInfoData implements NodeInfoData {
  factory _NodeInfoData(
      {final String? busStopName,
      final int? min1,
      final int? min2,
      final String? lineno}) = _$_NodeInfoData;

  factory _NodeInfoData.fromJson(Map<String, dynamic> json) =
      _$_NodeInfoData.fromJson;

  @override
  String? get busStopName => throw _privateConstructorUsedError;
  @override
  int? get min1 => throw _privateConstructorUsedError;
  @override
  int? get min2 => throw _privateConstructorUsedError;
  @override
  String? get lineno => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NodeInfoDataCopyWith<_$_NodeInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}
