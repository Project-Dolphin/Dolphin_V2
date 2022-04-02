// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_term_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarTerm _$CalendarTermFromJson(Map<String, dynamic> json) {
  return _CalendarTerm.fromJson(json);
}

/// @nodoc
class _$CalendarTermTearOff {
  const _$CalendarTermTearOff();

  _CalendarTerm call({String? startedAt, String? endedAt}) {
    return _CalendarTerm(
      startedAt: startedAt,
      endedAt: endedAt,
    );
  }

  CalendarTerm fromJson(Map<String, Object?> json) {
    return CalendarTerm.fromJson(json);
  }
}

/// @nodoc
const $CalendarTerm = _$CalendarTermTearOff();

/// @nodoc
mixin _$CalendarTerm {
  String? get startedAt => throw _privateConstructorUsedError;
  String? get endedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarTermCopyWith<CalendarTerm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarTermCopyWith<$Res> {
  factory $CalendarTermCopyWith(
          CalendarTerm value, $Res Function(CalendarTerm) then) =
      _$CalendarTermCopyWithImpl<$Res>;
  $Res call({String? startedAt, String? endedAt});
}

/// @nodoc
class _$CalendarTermCopyWithImpl<$Res> implements $CalendarTermCopyWith<$Res> {
  _$CalendarTermCopyWithImpl(this._value, this._then);

  final CalendarTerm _value;
  // ignore: unused_field
  final $Res Function(CalendarTerm) _then;

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
abstract class _$CalendarTermCopyWith<$Res>
    implements $CalendarTermCopyWith<$Res> {
  factory _$CalendarTermCopyWith(
          _CalendarTerm value, $Res Function(_CalendarTerm) then) =
      __$CalendarTermCopyWithImpl<$Res>;
  @override
  $Res call({String? startedAt, String? endedAt});
}

/// @nodoc
class __$CalendarTermCopyWithImpl<$Res> extends _$CalendarTermCopyWithImpl<$Res>
    implements _$CalendarTermCopyWith<$Res> {
  __$CalendarTermCopyWithImpl(
      _CalendarTerm _value, $Res Function(_CalendarTerm) _then)
      : super(_value, (v) => _then(v as _CalendarTerm));

  @override
  _CalendarTerm get _value => super._value as _CalendarTerm;

  @override
  $Res call({
    Object? startedAt = freezed,
    Object? endedAt = freezed,
  }) {
    return _then(_CalendarTerm(
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
class _$_CalendarTerm implements _CalendarTerm {
  _$_CalendarTerm({this.startedAt, this.endedAt});

  factory _$_CalendarTerm.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarTermFromJson(json);

  @override
  final String? startedAt;
  @override
  final String? endedAt;

  @override
  String toString() {
    return 'CalendarTerm(startedAt: $startedAt, endedAt: $endedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarTerm &&
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
  _$CalendarTermCopyWith<_CalendarTerm> get copyWith =>
      __$CalendarTermCopyWithImpl<_CalendarTerm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarTermToJson(this);
  }
}

abstract class _CalendarTerm implements CalendarTerm {
  factory _CalendarTerm({String? startedAt, String? endedAt}) = _$_CalendarTerm;

  factory _CalendarTerm.fromJson(Map<String, dynamic> json) =
      _$_CalendarTerm.fromJson;

  @override
  String? get startedAt;
  @override
  String? get endedAt;
  @override
  @JsonKey(ignore: true)
  _$CalendarTermCopyWith<_CalendarTerm> get copyWith =>
      throw _privateConstructorUsedError;
}
