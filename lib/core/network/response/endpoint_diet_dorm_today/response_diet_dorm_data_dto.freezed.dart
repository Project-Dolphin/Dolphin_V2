// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_diet_dorm_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DormData _$DormDataFromJson(Map<String, dynamic> json) {
  return _DormData.fromJson(json);
}

/// @nodoc
class _$DormDataTearOff {
  const _$DormDataTearOff();

  _DormData call(
      {List<String>? morning, List<String>? lunch, List<String>? dinner}) {
    return _DormData(
      morning: morning,
      lunch: lunch,
      dinner: dinner,
    );
  }

  DormData fromJson(Map<String, Object?> json) {
    return DormData.fromJson(json);
  }
}

/// @nodoc
const $DormData = _$DormDataTearOff();

/// @nodoc
mixin _$DormData {
  List<String>? get morning => throw _privateConstructorUsedError;
  List<String>? get lunch => throw _privateConstructorUsedError;
  List<String>? get dinner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DormDataCopyWith<DormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DormDataCopyWith<$Res> {
  factory $DormDataCopyWith(DormData value, $Res Function(DormData) then) =
      _$DormDataCopyWithImpl<$Res>;
  $Res call({List<String>? morning, List<String>? lunch, List<String>? dinner});
}

/// @nodoc
class _$DormDataCopyWithImpl<$Res> implements $DormDataCopyWith<$Res> {
  _$DormDataCopyWithImpl(this._value, this._then);

  final DormData _value;
  // ignore: unused_field
  final $Res Function(DormData) _then;

  @override
  $Res call({
    Object? morning = freezed,
    Object? lunch = freezed,
    Object? dinner = freezed,
  }) {
    return _then(_value.copyWith(
      morning: morning == freezed
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lunch: lunch == freezed
          ? _value.lunch
          : lunch // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dinner: dinner == freezed
          ? _value.dinner
          : dinner // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$DormDataCopyWith<$Res> implements $DormDataCopyWith<$Res> {
  factory _$DormDataCopyWith(_DormData value, $Res Function(_DormData) then) =
      __$DormDataCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? morning, List<String>? lunch, List<String>? dinner});
}

/// @nodoc
class __$DormDataCopyWithImpl<$Res> extends _$DormDataCopyWithImpl<$Res>
    implements _$DormDataCopyWith<$Res> {
  __$DormDataCopyWithImpl(_DormData _value, $Res Function(_DormData) _then)
      : super(_value, (v) => _then(v as _DormData));

  @override
  _DormData get _value => super._value as _DormData;

  @override
  $Res call({
    Object? morning = freezed,
    Object? lunch = freezed,
    Object? dinner = freezed,
  }) {
    return _then(_DormData(
      morning: morning == freezed
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lunch: lunch == freezed
          ? _value.lunch
          : lunch // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dinner: dinner == freezed
          ? _value.dinner
          : dinner // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DormData implements _DormData {
  _$_DormData({this.morning, this.lunch, this.dinner});

  factory _$_DormData.fromJson(Map<String, dynamic> json) =>
      _$$_DormDataFromJson(json);

  @override
  final List<String>? morning;
  @override
  final List<String>? lunch;
  @override
  final List<String>? dinner;

  @override
  String toString() {
    return 'DormData(morning: $morning, lunch: $lunch, dinner: $dinner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DormData &&
            const DeepCollectionEquality().equals(other.morning, morning) &&
            const DeepCollectionEquality().equals(other.lunch, lunch) &&
            const DeepCollectionEquality().equals(other.dinner, dinner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(morning),
      const DeepCollectionEquality().hash(lunch),
      const DeepCollectionEquality().hash(dinner));

  @JsonKey(ignore: true)
  @override
  _$DormDataCopyWith<_DormData> get copyWith =>
      __$DormDataCopyWithImpl<_DormData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DormDataToJson(this);
  }
}

abstract class _DormData implements DormData {
  factory _DormData(
      {List<String>? morning,
      List<String>? lunch,
      List<String>? dinner}) = _$_DormData;

  factory _DormData.fromJson(Map<String, dynamic> json) = _$_DormData.fromJson;

  @override
  List<String>? get morning;
  @override
  List<String>? get lunch;
  @override
  List<String>? get dinner;
  @override
  @JsonKey(ignore: true)
  _$DormDataCopyWith<_DormData> get copyWith =>
      throw _privateConstructorUsedError;
}
