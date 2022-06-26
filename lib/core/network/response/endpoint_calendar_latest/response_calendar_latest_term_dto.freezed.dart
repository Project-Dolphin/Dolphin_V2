// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_latest_term_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatestTerm _$LatestTermFromJson(Map<String, dynamic> json) {
  return _LatestTerm.fromJson(json);
}

/// @nodoc
mixin _$LatestTerm {
  String? get startedAt => throw _privateConstructorUsedError;
  String? get endedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatestTermCopyWith<LatestTerm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestTermCopyWith<$Res> {
  factory $LatestTermCopyWith(
          LatestTerm value, $Res Function(LatestTerm) then) =
      _$LatestTermCopyWithImpl<$Res>;
  $Res call({String? startedAt, String? endedAt});
}

/// @nodoc
class _$LatestTermCopyWithImpl<$Res> implements $LatestTermCopyWith<$Res> {
  _$LatestTermCopyWithImpl(this._value, this._then);

  final LatestTerm _value;
  // ignore: unused_field
  final $Res Function(LatestTerm) _then;

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
abstract class _$$_LatestTermCopyWith<$Res>
    implements $LatestTermCopyWith<$Res> {
  factory _$$_LatestTermCopyWith(
          _$_LatestTerm value, $Res Function(_$_LatestTerm) then) =
      __$$_LatestTermCopyWithImpl<$Res>;
  @override
  $Res call({String? startedAt, String? endedAt});
}

/// @nodoc
class __$$_LatestTermCopyWithImpl<$Res> extends _$LatestTermCopyWithImpl<$Res>
    implements _$$_LatestTermCopyWith<$Res> {
  __$$_LatestTermCopyWithImpl(
      _$_LatestTerm _value, $Res Function(_$_LatestTerm) _then)
      : super(_value, (v) => _then(v as _$_LatestTerm));

  @override
  _$_LatestTerm get _value => super._value as _$_LatestTerm;

  @override
  $Res call({
    Object? startedAt = freezed,
    Object? endedAt = freezed,
  }) {
    return _then(_$_LatestTerm(
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
class _$_LatestTerm implements _LatestTerm {
  _$_LatestTerm({this.startedAt, this.endedAt});

  factory _$_LatestTerm.fromJson(Map<String, dynamic> json) =>
      _$$_LatestTermFromJson(json);

  @override
  final String? startedAt;
  @override
  final String? endedAt;

  @override
  String toString() {
    return 'LatestTerm(startedAt: $startedAt, endedAt: $endedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatestTerm &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.endedAt, endedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startedAt),
      const DeepCollectionEquality().hash(endedAt));

  @JsonKey(ignore: true)
  @override
  _$$_LatestTermCopyWith<_$_LatestTerm> get copyWith =>
      __$$_LatestTermCopyWithImpl<_$_LatestTerm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatestTermToJson(this);
  }
}

abstract class _LatestTerm implements LatestTerm {
  factory _LatestTerm({final String? startedAt, final String? endedAt}) =
      _$_LatestTerm;

  factory _LatestTerm.fromJson(Map<String, dynamic> json) =
      _$_LatestTerm.fromJson;

  @override
  String? get startedAt => throw _privateConstructorUsedError;
  @override
  String? get endedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LatestTermCopyWith<_$_LatestTerm> get copyWith =>
      throw _privateConstructorUsedError;
}
