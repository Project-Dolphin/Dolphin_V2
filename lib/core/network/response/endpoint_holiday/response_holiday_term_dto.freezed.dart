// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_holiday_term_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HolidayTerm _$HolidayTermFromJson(Map<String, dynamic> json) {
  return _HolidayTerm.fromJson(json);
}

/// @nodoc
class _$HolidayTermTearOff {
  const _$HolidayTermTearOff();

  _HolidayTerm call({String? startedAt, String? endedAt}) {
    return _HolidayTerm(
      startedAt: startedAt,
      endedAt: endedAt,
    );
  }

  HolidayTerm fromJson(Map<String, Object?> json) {
    return HolidayTerm.fromJson(json);
  }
}

/// @nodoc
const $HolidayTerm = _$HolidayTermTearOff();

/// @nodoc
mixin _$HolidayTerm {
  String? get startedAt => throw _privateConstructorUsedError;
  String? get endedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolidayTermCopyWith<HolidayTerm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayTermCopyWith<$Res> {
  factory $HolidayTermCopyWith(
          HolidayTerm value, $Res Function(HolidayTerm) then) =
      _$HolidayTermCopyWithImpl<$Res>;
  $Res call({String? startedAt, String? endedAt});
}

/// @nodoc
class _$HolidayTermCopyWithImpl<$Res> implements $HolidayTermCopyWith<$Res> {
  _$HolidayTermCopyWithImpl(this._value, this._then);

  final HolidayTerm _value;
  // ignore: unused_field
  final $Res Function(HolidayTerm) _then;

  @override
  $Res call({
    Object? startedAt = freezed,
    Object? endedAt = freezed,
  }) {
    return _then(_value.copyWith(
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HolidayTermCopyWith<$Res>
    implements $HolidayTermCopyWith<$Res> {
  factory _$HolidayTermCopyWith(
          _HolidayTerm value, $Res Function(_HolidayTerm) then) =
      __$HolidayTermCopyWithImpl<$Res>;
  @override
  $Res call({String? startedAt, String? endedAt});
}

/// @nodoc
class __$HolidayTermCopyWithImpl<$Res> extends _$HolidayTermCopyWithImpl<$Res>
    implements _$HolidayTermCopyWith<$Res> {
  __$HolidayTermCopyWithImpl(
      _HolidayTerm _value, $Res Function(_HolidayTerm) _then)
      : super(_value, (v) => _then(v as _HolidayTerm));

  @override
  _HolidayTerm get _value => super._value as _HolidayTerm;

  @override
  $Res call({
    Object? startedAt = freezed,
    Object? endedAt = freezed,
  }) {
    return _then(_HolidayTerm(
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endedAt: endedAt == freezed
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HolidayTerm implements _HolidayTerm {
  _$_HolidayTerm({this.startedAt, this.endedAt});

  factory _$_HolidayTerm.fromJson(Map<String, dynamic> json) =>
      _$$_HolidayTermFromJson(json);

  @override
  final String? startedAt;
  @override
  final String? endedAt;

  @override
  String toString() {
    return 'HolidayTerm(startedAt: $startedAt, endedAt: $endedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HolidayTerm &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.endedAt, endedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(endedAt));

  @JsonKey(ignore: true)
  @override
  _$HolidayTermCopyWith<_HolidayTerm> get copyWith =>
      __$HolidayTermCopyWithImpl<_HolidayTerm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HolidayTermToJson(this);
  }
}

abstract class _HolidayTerm implements HolidayTerm {
  factory _HolidayTerm({String? startedAt, String? endedAt}) = _$_HolidayTerm;

  factory _HolidayTerm.fromJson(Map<String, dynamic> json) =
      _$_HolidayTerm.fromJson;

  @override
  String? get startedAt;
  @override
  String? get endedAt;
  @override
  @JsonKey(ignore: true)
  _$HolidayTermCopyWith<_HolidayTerm> get copyWith =>
      throw _privateConstructorUsedError;
}
