// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_diet_society_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DietData _$DietDataFromJson(Map<String, dynamic> json) {
  return _DietData.fromJson(json);
}

/// @nodoc
class _$DietDataTearOff {
  const _$DietDataTearOff();

  _DietData call(
      {List<DietDetail>? student,
      List<DietDetail>? snack,
      List<DietDetail>? staff}) {
    return _DietData(
      student: student,
      snack: snack,
      staff: staff,
    );
  }

  DietData fromJson(Map<String, Object?> json) {
    return DietData.fromJson(json);
  }
}

/// @nodoc
const $DietData = _$DietDataTearOff();

/// @nodoc
mixin _$DietData {
  List<DietDetail>? get student => throw _privateConstructorUsedError;
  List<DietDetail>? get snack => throw _privateConstructorUsedError;
  List<DietDetail>? get staff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DietDataCopyWith<DietData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietDataCopyWith<$Res> {
  factory $DietDataCopyWith(DietData value, $Res Function(DietData) then) =
      _$DietDataCopyWithImpl<$Res>;
  $Res call(
      {List<DietDetail>? student,
      List<DietDetail>? snack,
      List<DietDetail>? staff});
}

/// @nodoc
class _$DietDataCopyWithImpl<$Res> implements $DietDataCopyWith<$Res> {
  _$DietDataCopyWithImpl(this._value, this._then);

  final DietData _value;
  // ignore: unused_field
  final $Res Function(DietData) _then;

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
abstract class _$DietDataCopyWith<$Res> implements $DietDataCopyWith<$Res> {
  factory _$DietDataCopyWith(_DietData value, $Res Function(_DietData) then) =
      __$DietDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<DietDetail>? student,
      List<DietDetail>? snack,
      List<DietDetail>? staff});
}

/// @nodoc
class __$DietDataCopyWithImpl<$Res> extends _$DietDataCopyWithImpl<$Res>
    implements _$DietDataCopyWith<$Res> {
  __$DietDataCopyWithImpl(_DietData _value, $Res Function(_DietData) _then)
      : super(_value, (v) => _then(v as _DietData));

  @override
  _DietData get _value => super._value as _DietData;

  @override
  $Res call({
    Object? student = freezed,
    Object? snack = freezed,
    Object? staff = freezed,
  }) {
    return _then(_DietData(
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
class _$_DietData implements _DietData {
  _$_DietData({this.student, this.snack, this.staff});

  factory _$_DietData.fromJson(Map<String, dynamic> json) =>
      _$$_DietDataFromJson(json);

  @override
  final List<DietDetail>? student;
  @override
  final List<DietDetail>? snack;
  @override
  final List<DietDetail>? staff;

  @override
  String toString() {
    return 'DietData(student: $student, snack: $snack, staff: $staff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DietData &&
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
  _$DietDataCopyWith<_DietData> get copyWith =>
      __$DietDataCopyWithImpl<_DietData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DietDataToJson(this);
  }
}

abstract class _DietData implements DietData {
  factory _DietData(
      {List<DietDetail>? student,
      List<DietDetail>? snack,
      List<DietDetail>? staff}) = _$_DietData;

  factory _DietData.fromJson(Map<String, dynamic> json) = _$_DietData.fromJson;

  @override
  List<DietDetail>? get student;
  @override
  List<DietDetail>? get snack;
  @override
  List<DietDetail>? get staff;
  @override
  @JsonKey(ignore: true)
  _$DietDataCopyWith<_DietData> get copyWith =>
      throw _privateConstructorUsedError;
}
