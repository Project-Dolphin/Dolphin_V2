// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_holiday_data_v2_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HolidayDataV2 _$HolidayDataV2FromJson(Map<String, dynamic> json) {
  return _HolidayDataV2.fromJson(json);
}

/// @nodoc
mixin _$HolidayDataV2 {
  String? get term => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolidayDataV2CopyWith<HolidayDataV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayDataV2CopyWith<$Res> {
  factory $HolidayDataV2CopyWith(
          HolidayDataV2 value, $Res Function(HolidayDataV2) then) =
      _$HolidayDataV2CopyWithImpl<$Res>;
  $Res call({String? term, String? content});
}

/// @nodoc
class _$HolidayDataV2CopyWithImpl<$Res>
    implements $HolidayDataV2CopyWith<$Res> {
  _$HolidayDataV2CopyWithImpl(this._value, this._then);

  final HolidayDataV2 _value;
  // ignore: unused_field
  final $Res Function(HolidayDataV2) _then;

  @override
  $Res call({
    Object? term = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_HolidayDataV2CopyWith<$Res>
    implements $HolidayDataV2CopyWith<$Res> {
  factory _$$_HolidayDataV2CopyWith(
          _$_HolidayDataV2 value, $Res Function(_$_HolidayDataV2) then) =
      __$$_HolidayDataV2CopyWithImpl<$Res>;
  @override
  $Res call({String? term, String? content});
}

/// @nodoc
class __$$_HolidayDataV2CopyWithImpl<$Res>
    extends _$HolidayDataV2CopyWithImpl<$Res>
    implements _$$_HolidayDataV2CopyWith<$Res> {
  __$$_HolidayDataV2CopyWithImpl(
      _$_HolidayDataV2 _value, $Res Function(_$_HolidayDataV2) _then)
      : super(_value, (v) => _then(v as _$_HolidayDataV2));

  @override
  _$_HolidayDataV2 get _value => super._value as _$_HolidayDataV2;

  @override
  $Res call({
    Object? term = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_HolidayDataV2(
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HolidayDataV2 implements _HolidayDataV2 {
  _$_HolidayDataV2({this.term, this.content});

  factory _$_HolidayDataV2.fromJson(Map<String, dynamic> json) =>
      _$$_HolidayDataV2FromJson(json);

  @override
  final String? term;
  @override
  final String? content;

  @override
  String toString() {
    return 'HolidayDataV2(term: $term, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HolidayDataV2 &&
            const DeepCollectionEquality().equals(other.term, term) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(term),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_HolidayDataV2CopyWith<_$_HolidayDataV2> get copyWith =>
      __$$_HolidayDataV2CopyWithImpl<_$_HolidayDataV2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HolidayDataV2ToJson(this);
  }
}

abstract class _HolidayDataV2 implements HolidayDataV2 {
  factory _HolidayDataV2({final String? term, final String? content}) =
      _$_HolidayDataV2;

  factory _HolidayDataV2.fromJson(Map<String, dynamic> json) =
      _$_HolidayDataV2.fromJson;

  @override
  String? get term => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HolidayDataV2CopyWith<_$_HolidayDataV2> get copyWith =>
      throw _privateConstructorUsedError;
}
