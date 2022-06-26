// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_data_v2_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarDataV2 _$CalendarDataV2FromJson(Map<String, dynamic> json) {
  return _CalendarDataV2.fromJson(json);
}

/// @nodoc
mixin _$CalendarDataV2 {
  String? get term => throw _privateConstructorUsedError;
  bool? get mainPlan => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarDataV2CopyWith<CalendarDataV2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDataV2CopyWith<$Res> {
  factory $CalendarDataV2CopyWith(
          CalendarDataV2 value, $Res Function(CalendarDataV2) then) =
      _$CalendarDataV2CopyWithImpl<$Res>;
  $Res call({String? term, bool? mainPlan, String? content});
}

/// @nodoc
class _$CalendarDataV2CopyWithImpl<$Res>
    implements $CalendarDataV2CopyWith<$Res> {
  _$CalendarDataV2CopyWithImpl(this._value, this._then);

  final CalendarDataV2 _value;
  // ignore: unused_field
  final $Res Function(CalendarDataV2) _then;

  @override
  $Res call({
    Object? term = freezed,
    Object? mainPlan = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      mainPlan: mainPlan == freezed
          ? _value.mainPlan
          : mainPlan // ignore: cast_nullable_to_non_nullable
              as bool?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarDataV2CopyWith<$Res>
    implements $CalendarDataV2CopyWith<$Res> {
  factory _$$_CalendarDataV2CopyWith(
          _$_CalendarDataV2 value, $Res Function(_$_CalendarDataV2) then) =
      __$$_CalendarDataV2CopyWithImpl<$Res>;
  @override
  $Res call({String? term, bool? mainPlan, String? content});
}

/// @nodoc
class __$$_CalendarDataV2CopyWithImpl<$Res>
    extends _$CalendarDataV2CopyWithImpl<$Res>
    implements _$$_CalendarDataV2CopyWith<$Res> {
  __$$_CalendarDataV2CopyWithImpl(
      _$_CalendarDataV2 _value, $Res Function(_$_CalendarDataV2) _then)
      : super(_value, (v) => _then(v as _$_CalendarDataV2));

  @override
  _$_CalendarDataV2 get _value => super._value as _$_CalendarDataV2;

  @override
  $Res call({
    Object? term = freezed,
    Object? mainPlan = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_CalendarDataV2(
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String?,
      mainPlan: mainPlan == freezed
          ? _value.mainPlan
          : mainPlan // ignore: cast_nullable_to_non_nullable
              as bool?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarDataV2 implements _CalendarDataV2 {
  _$_CalendarDataV2({this.term, this.mainPlan, this.content});

  factory _$_CalendarDataV2.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarDataV2FromJson(json);

  @override
  final String? term;
  @override
  final bool? mainPlan;
  @override
  final String? content;

  @override
  String toString() {
    return 'CalendarDataV2(term: $term, mainPlan: $mainPlan, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarDataV2 &&
            const DeepCollectionEquality().equals(other.term, term) &&
            const DeepCollectionEquality().equals(other.mainPlan, mainPlan) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(term),
      const DeepCollectionEquality().hash(mainPlan),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarDataV2CopyWith<_$_CalendarDataV2> get copyWith =>
      __$$_CalendarDataV2CopyWithImpl<_$_CalendarDataV2>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarDataV2ToJson(this);
  }
}

abstract class _CalendarDataV2 implements CalendarDataV2 {
  factory _CalendarDataV2(
      {final String? term,
      final bool? mainPlan,
      final String? content}) = _$_CalendarDataV2;

  factory _CalendarDataV2.fromJson(Map<String, dynamic> json) =
      _$_CalendarDataV2.fromJson;

  @override
  String? get term => throw _privateConstructorUsedError;
  @override
  bool? get mainPlan => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarDataV2CopyWith<_$_CalendarDataV2> get copyWith =>
      throw _privateConstructorUsedError;
}
