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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CafeData _$CafeDataFromJson(Map<String, dynamic> json) {
  return _CafeData.fromJson(json);
}

/// @nodoc
mixin _$CafeData {
  List<DietDetail> get student => throw _privateConstructorUsedError;
  List<DietDetail> get snack => throw _privateConstructorUsedError;
  List<DietDetail> get staff => throw _privateConstructorUsedError;

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
      {List<DietDetail> student,
      List<DietDetail> snack,
      List<DietDetail> staff});
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
              as List<DietDetail>,
      snack: snack == freezed
          ? _value.snack
          : snack // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>,
      staff: staff == freezed
          ? _value.staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>,
    ));
  }
}

/// @nodoc
abstract class _$$_CafeDataCopyWith<$Res> implements $CafeDataCopyWith<$Res> {
  factory _$$_CafeDataCopyWith(
          _$_CafeData value, $Res Function(_$_CafeData) then) =
      __$$_CafeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<DietDetail> student,
      List<DietDetail> snack,
      List<DietDetail> staff});
}

/// @nodoc
class __$$_CafeDataCopyWithImpl<$Res> extends _$CafeDataCopyWithImpl<$Res>
    implements _$$_CafeDataCopyWith<$Res> {
  __$$_CafeDataCopyWithImpl(
      _$_CafeData _value, $Res Function(_$_CafeData) _then)
      : super(_value, (v) => _then(v as _$_CafeData));

  @override
  _$_CafeData get _value => super._value as _$_CafeData;

  @override
  $Res call({
    Object? student = freezed,
    Object? snack = freezed,
    Object? staff = freezed,
  }) {
    return _then(_$_CafeData(
      student: student == freezed
          ? _value._student
          : student // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>,
      snack: snack == freezed
          ? _value._snack
          : snack // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>,
      staff: staff == freezed
          ? _value._staff
          : staff // ignore: cast_nullable_to_non_nullable
              as List<DietDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CafeData implements _CafeData {
  _$_CafeData(
      {final List<DietDetail> student = const <DietDetail>[],
      final List<DietDetail> snack = const <DietDetail>[],
      final List<DietDetail> staff = const <DietDetail>[]})
      : _student = student,
        _snack = snack,
        _staff = staff;

  factory _$_CafeData.fromJson(Map<String, dynamic> json) =>
      _$$_CafeDataFromJson(json);

  final List<DietDetail> _student;
  @override
  @JsonKey()
  List<DietDetail> get student {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_student);
  }

  final List<DietDetail> _snack;
  @override
  @JsonKey()
  List<DietDetail> get snack {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snack);
  }

  final List<DietDetail> _staff;
  @override
  @JsonKey()
  List<DietDetail> get staff {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_staff);
  }

  @override
  String toString() {
    return 'CafeData(student: $student, snack: $snack, staff: $staff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CafeData &&
            const DeepCollectionEquality().equals(other._student, _student) &&
            const DeepCollectionEquality().equals(other._snack, _snack) &&
            const DeepCollectionEquality().equals(other._staff, _staff));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_student),
      const DeepCollectionEquality().hash(_snack),
      const DeepCollectionEquality().hash(_staff));

  @JsonKey(ignore: true)
  @override
  _$$_CafeDataCopyWith<_$_CafeData> get copyWith =>
      __$$_CafeDataCopyWithImpl<_$_CafeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CafeDataToJson(this);
  }
}

abstract class _CafeData implements CafeData {
  factory _CafeData(
      {final List<DietDetail> student,
      final List<DietDetail> snack,
      final List<DietDetail> staff}) = _$_CafeData;

  factory _CafeData.fromJson(Map<String, dynamic> json) = _$_CafeData.fromJson;

  @override
  List<DietDetail> get student => throw _privateConstructorUsedError;
  @override
  List<DietDetail> get snack => throw _privateConstructorUsedError;
  @override
  List<DietDetail> get staff => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CafeDataCopyWith<_$_CafeData> get copyWith =>
      throw _privateConstructorUsedError;
}
