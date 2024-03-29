// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'station_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StationInfo _$StationInfoFromJson(Map<String, dynamic> json) {
  return _StationInfo.fromJson(json);
}

/// @nodoc
mixin _$StationInfo {
  String get nearStation => throw _privateConstructorUsedError;
  String get nodeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StationInfoCopyWith<StationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StationInfoCopyWith<$Res> {
  factory $StationInfoCopyWith(
          StationInfo value, $Res Function(StationInfo) then) =
      _$StationInfoCopyWithImpl<$Res>;
  $Res call({String nearStation, String nodeId});
}

/// @nodoc
class _$StationInfoCopyWithImpl<$Res> implements $StationInfoCopyWith<$Res> {
  _$StationInfoCopyWithImpl(this._value, this._then);

  final StationInfo _value;
  // ignore: unused_field
  final $Res Function(StationInfo) _then;

  @override
  $Res call({
    Object? nearStation = freezed,
    Object? nodeId = freezed,
  }) {
    return _then(_value.copyWith(
      nearStation: nearStation == freezed
          ? _value.nearStation
          : nearStation // ignore: cast_nullable_to_non_nullable
              as String,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StationInfoCopyWith<$Res>
    implements $StationInfoCopyWith<$Res> {
  factory _$$_StationInfoCopyWith(
          _$_StationInfo value, $Res Function(_$_StationInfo) then) =
      __$$_StationInfoCopyWithImpl<$Res>;
  @override
  $Res call({String nearStation, String nodeId});
}

/// @nodoc
class __$$_StationInfoCopyWithImpl<$Res> extends _$StationInfoCopyWithImpl<$Res>
    implements _$$_StationInfoCopyWith<$Res> {
  __$$_StationInfoCopyWithImpl(
      _$_StationInfo _value, $Res Function(_$_StationInfo) _then)
      : super(_value, (v) => _then(v as _$_StationInfo));

  @override
  _$_StationInfo get _value => super._value as _$_StationInfo;

  @override
  $Res call({
    Object? nearStation = freezed,
    Object? nodeId = freezed,
  }) {
    return _then(_$_StationInfo(
      nearStation: nearStation == freezed
          ? _value.nearStation
          : nearStation // ignore: cast_nullable_to_non_nullable
              as String,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StationInfo implements _StationInfo {
  _$_StationInfo({this.nearStation = '부산역', this.nodeId = '169100201'});

  factory _$_StationInfo.fromJson(Map<String, dynamic> json) =>
      _$$_StationInfoFromJson(json);

  @override
  @JsonKey()
  final String nearStation;
  @override
  @JsonKey()
  final String nodeId;

  @override
  String toString() {
    return 'StationInfo(nearStation: $nearStation, nodeId: $nodeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StationInfo &&
            const DeepCollectionEquality()
                .equals(other.nearStation, nearStation) &&
            const DeepCollectionEquality().equals(other.nodeId, nodeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nearStation),
      const DeepCollectionEquality().hash(nodeId));

  @JsonKey(ignore: true)
  @override
  _$$_StationInfoCopyWith<_$_StationInfo> get copyWith =>
      __$$_StationInfoCopyWithImpl<_$_StationInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StationInfoToJson(this);
  }
}

abstract class _StationInfo implements StationInfo {
  factory _StationInfo({final String nearStation, final String nodeId}) =
      _$_StationInfo;

  factory _StationInfo.fromJson(Map<String, dynamic> json) =
      _$_StationInfo.fromJson;

  @override
  String get nearStation => throw _privateConstructorUsedError;
  @override
  String get nodeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StationInfoCopyWith<_$_StationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
