// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_businfo_specific_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpecificBusInfoWrapper _$SpecificBusInfoWrapperFromJson(
    Map<String, dynamic> json) {
  return _SpecificBusInfoWrapper.fromJson(json);
}

/// @nodoc
mixin _$SpecificBusInfoWrapper {
  String? get busNumber => throw _privateConstructorUsedError;
  List<BusInfoData> get busStopInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecificBusInfoWrapperCopyWith<SpecificBusInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificBusInfoWrapperCopyWith<$Res> {
  factory $SpecificBusInfoWrapperCopyWith(SpecificBusInfoWrapper value,
          $Res Function(SpecificBusInfoWrapper) then) =
      _$SpecificBusInfoWrapperCopyWithImpl<$Res>;
  $Res call({String? busNumber, List<BusInfoData> busStopInfo});
}

/// @nodoc
class _$SpecificBusInfoWrapperCopyWithImpl<$Res>
    implements $SpecificBusInfoWrapperCopyWith<$Res> {
  _$SpecificBusInfoWrapperCopyWithImpl(this._value, this._then);

  final SpecificBusInfoWrapper _value;
  // ignore: unused_field
  final $Res Function(SpecificBusInfoWrapper) _then;

  @override
  $Res call({
    Object? busNumber = freezed,
    Object? busStopInfo = freezed,
  }) {
    return _then(_value.copyWith(
      busNumber: busNumber == freezed
          ? _value.busNumber
          : busNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      busStopInfo: busStopInfo == freezed
          ? _value.busStopInfo
          : busStopInfo // ignore: cast_nullable_to_non_nullable
              as List<BusInfoData>,
    ));
  }
}

/// @nodoc
abstract class _$$_SpecificBusInfoWrapperCopyWith<$Res>
    implements $SpecificBusInfoWrapperCopyWith<$Res> {
  factory _$$_SpecificBusInfoWrapperCopyWith(_$_SpecificBusInfoWrapper value,
          $Res Function(_$_SpecificBusInfoWrapper) then) =
      __$$_SpecificBusInfoWrapperCopyWithImpl<$Res>;
  @override
  $Res call({String? busNumber, List<BusInfoData> busStopInfo});
}

/// @nodoc
class __$$_SpecificBusInfoWrapperCopyWithImpl<$Res>
    extends _$SpecificBusInfoWrapperCopyWithImpl<$Res>
    implements _$$_SpecificBusInfoWrapperCopyWith<$Res> {
  __$$_SpecificBusInfoWrapperCopyWithImpl(_$_SpecificBusInfoWrapper _value,
      $Res Function(_$_SpecificBusInfoWrapper) _then)
      : super(_value, (v) => _then(v as _$_SpecificBusInfoWrapper));

  @override
  _$_SpecificBusInfoWrapper get _value =>
      super._value as _$_SpecificBusInfoWrapper;

  @override
  $Res call({
    Object? busNumber = freezed,
    Object? busStopInfo = freezed,
  }) {
    return _then(_$_SpecificBusInfoWrapper(
      busNumber: busNumber == freezed
          ? _value.busNumber
          : busNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      busStopInfo: busStopInfo == freezed
          ? _value._busStopInfo
          : busStopInfo // ignore: cast_nullable_to_non_nullable
              as List<BusInfoData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpecificBusInfoWrapper implements _SpecificBusInfoWrapper {
  _$_SpecificBusInfoWrapper(
      {this.busNumber,
      final List<BusInfoData> busStopInfo = const <BusInfoData>[]})
      : _busStopInfo = busStopInfo;

  factory _$_SpecificBusInfoWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_SpecificBusInfoWrapperFromJson(json);

  @override
  final String? busNumber;
  final List<BusInfoData> _busStopInfo;
  @override
  @JsonKey()
  List<BusInfoData> get busStopInfo {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_busStopInfo);
  }

  @override
  String toString() {
    return 'SpecificBusInfoWrapper(busNumber: $busNumber, busStopInfo: $busStopInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpecificBusInfoWrapper &&
            const DeepCollectionEquality().equals(other.busNumber, busNumber) &&
            const DeepCollectionEquality()
                .equals(other._busStopInfo, _busStopInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(busNumber),
      const DeepCollectionEquality().hash(_busStopInfo));

  @JsonKey(ignore: true)
  @override
  _$$_SpecificBusInfoWrapperCopyWith<_$_SpecificBusInfoWrapper> get copyWith =>
      __$$_SpecificBusInfoWrapperCopyWithImpl<_$_SpecificBusInfoWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecificBusInfoWrapperToJson(this);
  }
}

abstract class _SpecificBusInfoWrapper implements SpecificBusInfoWrapper {
  factory _SpecificBusInfoWrapper(
      {final String? busNumber,
      final List<BusInfoData> busStopInfo}) = _$_SpecificBusInfoWrapper;

  factory _SpecificBusInfoWrapper.fromJson(Map<String, dynamic> json) =
      _$_SpecificBusInfoWrapper.fromJson;

  @override
  String? get busNumber => throw _privateConstructorUsedError;
  @override
  List<BusInfoData> get busStopInfo => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SpecificBusInfoWrapperCopyWith<_$_SpecificBusInfoWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
