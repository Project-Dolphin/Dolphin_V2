// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_businfo_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusInfoData _$BusInfoDataFromJson(Map<String, dynamic> json) {
  return _BusInfoData.fromJson(json);
}

/// @nodoc
class _$BusInfoDataTearOff {
  const _$BusInfoDataTearOff();

  _BusInfoData call(
      {String? carno,
      int? nodeid,
      double? lat,
      double? lin,
      int? gpsym,
      String? bstopnm}) {
    return _BusInfoData(
      carno: carno,
      nodeid: nodeid,
      lat: lat,
      lin: lin,
      gpsym: gpsym,
      bstopnm: bstopnm,
    );
  }

  BusInfoData fromJson(Map<String, Object?> json) {
    return BusInfoData.fromJson(json);
  }
}

/// @nodoc
const $BusInfoData = _$BusInfoDataTearOff();

/// @nodoc
mixin _$BusInfoData {
  String? get carno => throw _privateConstructorUsedError;
  int? get nodeid => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lin => throw _privateConstructorUsedError;
  int? get gpsym => throw _privateConstructorUsedError;
  String? get bstopnm => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusInfoDataCopyWith<BusInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusInfoDataCopyWith<$Res> {
  factory $BusInfoDataCopyWith(
          BusInfoData value, $Res Function(BusInfoData) then) =
      _$BusInfoDataCopyWithImpl<$Res>;
  $Res call(
      {String? carno,
      int? nodeid,
      double? lat,
      double? lin,
      int? gpsym,
      String? bstopnm});
}

/// @nodoc
class _$BusInfoDataCopyWithImpl<$Res> implements $BusInfoDataCopyWith<$Res> {
  _$BusInfoDataCopyWithImpl(this._value, this._then);

  final BusInfoData _value;
  // ignore: unused_field
  final $Res Function(BusInfoData) _then;

  @override
  $Res call({
    Object? carno = freezed,
    Object? nodeid = freezed,
    Object? lat = freezed,
    Object? lin = freezed,
    Object? gpsym = freezed,
    Object? bstopnm = freezed,
  }) {
    return _then(_value.copyWith(
      carno: carno == freezed
          ? _value.carno
          : carno // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeid: nodeid == freezed
          ? _value.nodeid
          : nodeid // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lin: lin == freezed
          ? _value.lin
          : lin // ignore: cast_nullable_to_non_nullable
              as double?,
      gpsym: gpsym == freezed
          ? _value.gpsym
          : gpsym // ignore: cast_nullable_to_non_nullable
              as int?,
      bstopnm: bstopnm == freezed
          ? _value.bstopnm
          : bstopnm // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BusInfoDataCopyWith<$Res>
    implements $BusInfoDataCopyWith<$Res> {
  factory _$BusInfoDataCopyWith(
          _BusInfoData value, $Res Function(_BusInfoData) then) =
      __$BusInfoDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? carno,
      int? nodeid,
      double? lat,
      double? lin,
      int? gpsym,
      String? bstopnm});
}

/// @nodoc
class __$BusInfoDataCopyWithImpl<$Res> extends _$BusInfoDataCopyWithImpl<$Res>
    implements _$BusInfoDataCopyWith<$Res> {
  __$BusInfoDataCopyWithImpl(
      _BusInfoData _value, $Res Function(_BusInfoData) _then)
      : super(_value, (v) => _then(v as _BusInfoData));

  @override
  _BusInfoData get _value => super._value as _BusInfoData;

  @override
  $Res call({
    Object? carno = freezed,
    Object? nodeid = freezed,
    Object? lat = freezed,
    Object? lin = freezed,
    Object? gpsym = freezed,
    Object? bstopnm = freezed,
  }) {
    return _then(_BusInfoData(
      carno: carno == freezed
          ? _value.carno
          : carno // ignore: cast_nullable_to_non_nullable
              as String?,
      nodeid: nodeid == freezed
          ? _value.nodeid
          : nodeid // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lin: lin == freezed
          ? _value.lin
          : lin // ignore: cast_nullable_to_non_nullable
              as double?,
      gpsym: gpsym == freezed
          ? _value.gpsym
          : gpsym // ignore: cast_nullable_to_non_nullable
              as int?,
      bstopnm: bstopnm == freezed
          ? _value.bstopnm
          : bstopnm // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusInfoData implements _BusInfoData {
  _$_BusInfoData(
      {this.carno, this.nodeid, this.lat, this.lin, this.gpsym, this.bstopnm});

  factory _$_BusInfoData.fromJson(Map<String, dynamic> json) =>
      _$$_BusInfoDataFromJson(json);

  @override
  final String? carno;
  @override
  final int? nodeid;
  @override
  final double? lat;
  @override
  final double? lin;
  @override
  final int? gpsym;
  @override
  final String? bstopnm;

  @override
  String toString() {
    return 'BusInfoData(carno: $carno, nodeid: $nodeid, lat: $lat, lin: $lin, gpsym: $gpsym, bstopnm: $bstopnm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BusInfoData &&
            const DeepCollectionEquality().equals(other.carno, carno) &&
            const DeepCollectionEquality().equals(other.nodeid, nodeid) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lin, lin) &&
            const DeepCollectionEquality().equals(other.gpsym, gpsym) &&
            const DeepCollectionEquality().equals(other.bstopnm, bstopnm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(carno),
      const DeepCollectionEquality().hash(nodeid),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lin),
      const DeepCollectionEquality().hash(gpsym),
      const DeepCollectionEquality().hash(bstopnm));

  @JsonKey(ignore: true)
  @override
  _$BusInfoDataCopyWith<_BusInfoData> get copyWith =>
      __$BusInfoDataCopyWithImpl<_BusInfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusInfoDataToJson(this);
  }
}

abstract class _BusInfoData implements BusInfoData {
  factory _BusInfoData(
      {String? carno,
      int? nodeid,
      double? lat,
      double? lin,
      int? gpsym,
      String? bstopnm}) = _$_BusInfoData;

  factory _BusInfoData.fromJson(Map<String, dynamic> json) =
      _$_BusInfoData.fromJson;

  @override
  String? get carno;
  @override
  int? get nodeid;
  @override
  double? get lat;
  @override
  double? get lin;
  @override
  int? get gpsym;
  @override
  String? get bstopnm;
  @override
  @JsonKey(ignore: true)
  _$BusInfoDataCopyWith<_BusInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}
