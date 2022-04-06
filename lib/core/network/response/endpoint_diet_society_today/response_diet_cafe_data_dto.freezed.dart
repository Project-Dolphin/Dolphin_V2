// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_diet_cafe_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CafeData _$CafeDataFromJson(Map<String, dynamic> json) {
  return _CafeData.fromJson(json);
}

/// @nodoc
class _$CafeDataTearOff {
  const _$CafeDataTearOff();

  _CafeData call(
      {List<DietDetail>? student,
      List<DietDetail>? snack,
      List<DietDetail>? staff}) {
    return _CafeData(
      student: student,
      snack: snack,
      staff: staff,
    );
  }

  CafeData fromJson(Map<String, Object?> json) {
    return CafeData.fromJson(json);
  }
}

/// @nodoc
const $CafeData = _$CafeDataTearOff();

/// @nodoc
mixin _$CafeData {
  List<DietDetail>? get student => throw _privateConstructorUsedError;
  List<DietDetail>? get snack => throw _privateConstructorUsedError;
  List<DietDetail>? get staff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CafeDataCopyWith<CafeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CafeDataCopyWith<$Res> {
  factory $CafeDataCopyWith(CafeData value, $Res Function(CafeData) then) =
      _$CafeDataCopyWithImpl<$Res>;
  $Res call(
      {List<DietDetail>? student,
      List<DietDetail>? snack,
      List<DietDetail>? staff});
}

/// @nodoc
class _$CafeDataCopyWithImpl<$Res> implements $CafeDataCopyWith<$Res> {
  _$CafeDataCopyWithImpl(this._value, this._then);

  final CafeData _value;
  // ignore: unused_field
  final $Res Function(CafeData) _then;

  @override
  $Res call({
    Object? student = freezed,
    Object? snack = freezed,
    Object? staff = freezed,
  }) {
    return _then(_value.copyWith(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>?,
      snack: snack == freezed
          ? _value.snack
          : snack // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>?,
      staff: staff == freezed
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>?,
    ));
  }
}

/// @nodoc
abstract class _$CafeDataCopyWith<$Res> implements $CafeDataCopyWith<$Res> {
  factory _$CafeDataCopyWith(_CafeData value, $Res Function(_CafeData) then) =
      __$CafeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<DietDetail>? student,
      List<DietDetail>? snack,
      List<DietDetail>? staff});
}

/// @nodoc
class __$CafeDataCopyWithImpl<$Res> extends _$CafeDataCopyWithImpl<$Res>
    implements _$CafeDataCopyWith<$Res> {
  __$CafeDataCopyWithImpl(_CafeData _value, $Res Function(_CafeData) _then)
      : super(_value, (v) => _then(v as _CafeData));

  @override
  _CafeData get _value => super._value as _CafeData;

  @override
  $Res call({
    Object? student = freezed,
    Object? snack = freezed,
    Object? staff = freezed,
  }) {
    return _then(_CafeData(
      student: student == freezed
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>?,
      snack: snack == freezed
          ? _value.snack
          : snack // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>?,
      staff: staff == freezed
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CafeData implements _CafeData {
  _$_CafeData({this.student, this.snack, this.staff});

  factory _$_CafeData.fromJson(Map<String, dynamic> json) =>
      _$$_CafeDataFromJson(json);

  @override
  final List<DietDetail>? student;
  @override
  final List<DietDetail>? snack;
  @override
  final List<DietDetail>? staff;

  @override
  String toString() {
    return 'CafeData(student: $student, snack: $snack, staff: $staff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CafeData &&
            const DeepCollectionEquality().equals(other.student, student) &&
            const DeepCollectionEquality().equals(other.snack, snack) &&
            const DeepCollectionEquality().equals(other.staff, staff));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(student),
      const DeepCollectionEquality().hash(snack),
      const DeepCollectionEquality().hash(staff));

  @JsonKey(ignore: true)
  @override
  _$CafeDataCopyWith<_CafeData> get copyWith =>
      __$CafeDataCopyWithImpl<_CafeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CafeDataToJson(this);
  }
}

abstract class _CafeData implements CafeData {
  factory _CafeData(
      {List<DietDetail>? student,
      List<DietDetail>? snack,
      List<DietDetail>? staff}) = _$_CafeData;

  factory _CafeData.fromJson(Map<String, dynamic> json) = _$_CafeData.fromJson;

  @override
  List<DietDetail>? get student;
  @override
  List<DietDetail>? get snack;
  @override
  List<DietDetail>? get staff;
  @override
  @JsonKey(ignore: true)
  _$CafeDataCopyWith<_CafeData> get copyWith =>
      throw _privateConstructorUsedError;
}
