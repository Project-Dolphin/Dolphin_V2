// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_depart_bus_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DepartBusInfo _$DepartBusInfoFromJson(Map<String, dynamic> json) {
  return _DepartBusInfo.fromJson(json);
}

/// @nodoc
mixin _$DepartBusInfo {
  String? get bus => throw _privateConstructorUsedError; // 190 출발 시간
  int? get remainMinutes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartBusInfoCopyWith<DepartBusInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartBusInfoCopyWith<$Res> {
  factory $DepartBusInfoCopyWith(
          DepartBusInfo value, $Res Function(DepartBusInfo) then) =
      _$DepartBusInfoCopyWithImpl<$Res>;
  $Res call({String? bus, int? remainMinutes});
}

/// @nodoc
class _$DepartBusInfoCopyWithImpl<$Res>
    implements $DepartBusInfoCopyWith<$Res> {
  _$DepartBusInfoCopyWithImpl(this._value, this._then);

  final DepartBusInfo _value;
  // ignore: unused_field
  final $Res Function(DepartBusInfo) _then;

  @override
  $Res call({
    Object? bus = freezed,
    Object? remainMinutes = freezed,
  }) {
    return _then(_value.copyWith(
      bus: bus == freezed
          ? _value.bus
          : bus // ignore: cast_nullable_to_non_nullable
              as String?,
      remainMinutes: remainMinutes == freezed
          ? _value.remainMinutes
          : remainMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_DepartBusInfoCopyWith<$Res>
    implements $DepartBusInfoCopyWith<$Res> {
  factory _$$_DepartBusInfoCopyWith(
          _$_DepartBusInfo value, $Res Function(_$_DepartBusInfo) then) =
      __$$_DepartBusInfoCopyWithImpl<$Res>;
  @override
  $Res call({String? bus, int? remainMinutes});
}

/// @nodoc
class __$$_DepartBusInfoCopyWithImpl<$Res>
    extends _$DepartBusInfoCopyWithImpl<$Res>
    implements _$$_DepartBusInfoCopyWith<$Res> {
  __$$_DepartBusInfoCopyWithImpl(
      _$_DepartBusInfo _value, $Res Function(_$_DepartBusInfo) _then)
      : super(_value, (v) => _then(v as _$_DepartBusInfo));

  @override
  _$_DepartBusInfo get _value => super._value as _$_DepartBusInfo;

  @override
  $Res call({
    Object? bus = freezed,
    Object? remainMinutes = freezed,
  }) {
    return _then(_$_DepartBusInfo(
      bus: bus == freezed
          ? _value.bus
          : bus // ignore: cast_nullable_to_non_nullable
              as String?,
      remainMinutes: remainMinutes == freezed
          ? _value.remainMinutes
          : remainMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepartBusInfo implements _DepartBusInfo {
  _$_DepartBusInfo({this.bus, this.remainMinutes});

  factory _$_DepartBusInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DepartBusInfoFromJson(json);

  @override
  final String? bus;
// 190 출발 시간
  @override
  final int? remainMinutes;

  @override
  String toString() {
    return 'DepartBusInfo(bus: $bus, remainMinutes: $remainMinutes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartBusInfo &&
            const DeepCollectionEquality().equals(other.bus, bus) &&
            const DeepCollectionEquality()
                .equals(other.remainMinutes, remainMinutes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bus),
      const DeepCollectionEquality().hash(remainMinutes));

  @JsonKey(ignore: true)
  @override
  _$$_DepartBusInfoCopyWith<_$_DepartBusInfo> get copyWith =>
      __$$_DepartBusInfoCopyWithImpl<_$_DepartBusInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartBusInfoToJson(this);
  }
}

abstract class _DepartBusInfo implements DepartBusInfo {
  factory _DepartBusInfo({final String? bus, final int? remainMinutes}) =
      _$_DepartBusInfo;

  factory _DepartBusInfo.fromJson(Map<String, dynamic> json) =
      _$_DepartBusInfo.fromJson;

  @override
  String? get bus => throw _privateConstructorUsedError;
  @override // 190 출발 시간
  int? get remainMinutes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DepartBusInfoCopyWith<_$_DepartBusInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
