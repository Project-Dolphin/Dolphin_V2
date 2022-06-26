// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_businfo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusInfoWrapper _$BusInfoWrapperFromJson(Map<String, dynamic> json) {
  return _BusInfoWrapper.fromJson(json);
}

/// @nodoc
mixin _$BusInfoWrapper {
  List<BusInfoData>? get busStopInfo => throw _privateConstructorUsedError;
  String? get busNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusInfoWrapperCopyWith<BusInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusInfoWrapperCopyWith<$Res> {
  factory $BusInfoWrapperCopyWith(
          BusInfoWrapper value, $Res Function(BusInfoWrapper) then) =
      _$BusInfoWrapperCopyWithImpl<$Res>;
  $Res call({List<BusInfoData>? busStopInfo, String? busNumber});
}

/// @nodoc
class _$BusInfoWrapperCopyWithImpl<$Res>
    implements $BusInfoWrapperCopyWith<$Res> {
  _$BusInfoWrapperCopyWithImpl(this._value, this._then);

  final BusInfoWrapper _value;
  // ignore: unused_field
  final $Res Function(BusInfoWrapper) _then;

  @override
  $Res call({
    Object? busStopInfo = freezed,
    Object? busNumber = freezed,
  }) {
    return _then(_value.copyWith(
      busStopInfo: busStopInfo == freezed
          ? _value.busStopInfo
          : busStopInfo // ignore: cast_nullable_to_non_nullable
              as List<BusInfoData>?,
      busNumber: busNumber == freezed
          ? _value.busNumber
          : busNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BusInfoWrapperCopyWith<$Res>
    implements $BusInfoWrapperCopyWith<$Res> {
  factory _$$_BusInfoWrapperCopyWith(
          _$_BusInfoWrapper value, $Res Function(_$_BusInfoWrapper) then) =
      __$$_BusInfoWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<BusInfoData>? busStopInfo, String? busNumber});
}

/// @nodoc
class __$$_BusInfoWrapperCopyWithImpl<$Res>
    extends _$BusInfoWrapperCopyWithImpl<$Res>
    implements _$$_BusInfoWrapperCopyWith<$Res> {
  __$$_BusInfoWrapperCopyWithImpl(
      _$_BusInfoWrapper _value, $Res Function(_$_BusInfoWrapper) _then)
      : super(_value, (v) => _then(v as _$_BusInfoWrapper));

  @override
  _$_BusInfoWrapper get _value => super._value as _$_BusInfoWrapper;

  @override
  $Res call({
    Object? busStopInfo = freezed,
    Object? busNumber = freezed,
  }) {
    return _then(_$_BusInfoWrapper(
      busStopInfo: busStopInfo == freezed
          ? _value._busStopInfo
          : busStopInfo // ignore: cast_nullable_to_non_nullable
              as List<BusInfoData>?,
      busNumber: busNumber == freezed
          ? _value.busNumber
          : busNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusInfoWrapper implements _BusInfoWrapper {
  _$_BusInfoWrapper({final List<BusInfoData>? busStopInfo, this.busNumber})
      : _busStopInfo = busStopInfo;

  factory _$_BusInfoWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_BusInfoWrapperFromJson(json);

  final List<BusInfoData>? _busStopInfo;
  @override
  List<BusInfoData>? get busStopInfo {
    final value = _busStopInfo;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? busNumber;

  @override
  String toString() {
    return 'BusInfoWrapper(busStopInfo: $busStopInfo, busNumber: $busNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BusInfoWrapper &&
            const DeepCollectionEquality()
                .equals(other._busStopInfo, _busStopInfo) &&
            const DeepCollectionEquality().equals(other.busNumber, busNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_busStopInfo),
      const DeepCollectionEquality().hash(busNumber));

  @JsonKey(ignore: true)
  @override
  _$$_BusInfoWrapperCopyWith<_$_BusInfoWrapper> get copyWith =>
      __$$_BusInfoWrapperCopyWithImpl<_$_BusInfoWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusInfoWrapperToJson(this);
  }
}

abstract class _BusInfoWrapper implements BusInfoWrapper {
  factory _BusInfoWrapper(
      {final List<BusInfoData>? busStopInfo,
      final String? busNumber}) = _$_BusInfoWrapper;

  factory _BusInfoWrapper.fromJson(Map<String, dynamic> json) =
      _$_BusInfoWrapper.fromJson;

  @override
  List<BusInfoData>? get busStopInfo => throw _privateConstructorUsedError;
  @override
  String? get busNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BusInfoWrapperCopyWith<_$_BusInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
