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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusInfoData _$BusInfoDataFromJson(Map<String, dynamic> json) {
  return _BusInfoData.fromJson(json);
}

/// @nodoc
mixin _$BusInfoData {
  String? get bstopnm => throw _privateConstructorUsedError; // 정류장명
  int get rpoint =>
      throw _privateConstructorUsedError; // 회차 정보(0: 일반, 1: 회차 정류장)
  String? get carno => throw _privateConstructorUsedError; // 버스 차량 번호
  int get lowplate => throw _privateConstructorUsedError;

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
  $Res call({String? bstopnm, int rpoint, String? carno, int lowplate});
}

/// @nodoc
class _$BusInfoDataCopyWithImpl<$Res> implements $BusInfoDataCopyWith<$Res> {
  _$BusInfoDataCopyWithImpl(this._value, this._then);

  final BusInfoData _value;
  // ignore: unused_field
  final $Res Function(BusInfoData) _then;

  @override
  $Res call({
    Object? bstopnm = freezed,
    Object? rpoint = freezed,
    Object? carno = freezed,
    Object? lowplate = freezed,
  }) {
    return _then(_value.copyWith(
      bstopnm: bstopnm == freezed
          ? _value.bstopnm
          : bstopnm // ignore: cast_nullable_to_non_nullable
              as String?,
      rpoint: rpoint == freezed
          ? _value.rpoint
          : rpoint // ignore: cast_nullable_to_non_nullable
              as int,
      carno: carno == freezed
          ? _value.carno
          : carno // ignore: cast_nullable_to_non_nullable
              as String?,
      lowplate: lowplate == freezed
          ? _value.lowplate
          : lowplate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BusInfoDataCopyWith<$Res>
    implements $BusInfoDataCopyWith<$Res> {
  factory _$$_BusInfoDataCopyWith(
          _$_BusInfoData value, $Res Function(_$_BusInfoData) then) =
      __$$_BusInfoDataCopyWithImpl<$Res>;
  @override
  $Res call({String? bstopnm, int rpoint, String? carno, int lowplate});
}

/// @nodoc
class __$$_BusInfoDataCopyWithImpl<$Res> extends _$BusInfoDataCopyWithImpl<$Res>
    implements _$$_BusInfoDataCopyWith<$Res> {
  __$$_BusInfoDataCopyWithImpl(
      _$_BusInfoData _value, $Res Function(_$_BusInfoData) _then)
      : super(_value, (v) => _then(v as _$_BusInfoData));

  @override
  _$_BusInfoData get _value => super._value as _$_BusInfoData;

  @override
  $Res call({
    Object? bstopnm = freezed,
    Object? rpoint = freezed,
    Object? carno = freezed,
    Object? lowplate = freezed,
  }) {
    return _then(_$_BusInfoData(
      bstopnm: bstopnm == freezed
          ? _value.bstopnm
          : bstopnm // ignore: cast_nullable_to_non_nullable
              as String?,
      rpoint: rpoint == freezed
          ? _value.rpoint
          : rpoint // ignore: cast_nullable_to_non_nullable
              as int,
      carno: carno == freezed
          ? _value.carno
          : carno // ignore: cast_nullable_to_non_nullable
              as String?,
      lowplate: lowplate == freezed
          ? _value.lowplate
          : lowplate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusInfoData implements _BusInfoData {
  _$_BusInfoData(
      {this.bstopnm, this.rpoint = 0, this.carno, this.lowplate = 0});

  factory _$_BusInfoData.fromJson(Map<String, dynamic> json) =>
      _$$_BusInfoDataFromJson(json);

  @override
  final String? bstopnm;
// 정류장명
  @override
  @JsonKey()
  final int rpoint;
// 회차 정보(0: 일반, 1: 회차 정류장)
  @override
  final String? carno;
// 버스 차량 번호
  @override
  @JsonKey()
  final int lowplate;

  @override
  String toString() {
    return 'BusInfoData(bstopnm: $bstopnm, rpoint: $rpoint, carno: $carno, lowplate: $lowplate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusInfoData &&
            const DeepCollectionEquality().equals(other.bstopnm, bstopnm) &&
            const DeepCollectionEquality().equals(other.rpoint, rpoint) &&
            const DeepCollectionEquality().equals(other.carno, carno) &&
            const DeepCollectionEquality().equals(other.lowplate, lowplate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bstopnm),
      const DeepCollectionEquality().hash(rpoint),
      const DeepCollectionEquality().hash(carno),
      const DeepCollectionEquality().hash(lowplate));

  @JsonKey(ignore: true)
  @override
  _$$_BusInfoDataCopyWith<_$_BusInfoData> get copyWith =>
      __$$_BusInfoDataCopyWithImpl<_$_BusInfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusInfoDataToJson(this);
  }
}

abstract class _BusInfoData implements BusInfoData {
  factory _BusInfoData(
      {final String? bstopnm,
      final int rpoint,
      final String? carno,
      final int lowplate}) = _$_BusInfoData;

  factory _BusInfoData.fromJson(Map<String, dynamic> json) =
      _$_BusInfoData.fromJson;

  @override
  String? get bstopnm => throw _privateConstructorUsedError;
  @override // 정류장명
  int get rpoint => throw _privateConstructorUsedError;
  @override // 회차 정보(0: 일반, 1: 회차 정류장)
  String? get carno => throw _privateConstructorUsedError;
  @override // 버스 차량 번호
  int get lowplate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BusInfoDataCopyWith<_$_BusInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}
