// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarSumamry _$CalendarSumamryFromJson(Map<String, dynamic> json) {
  return _CalendarSumamry.fromJson(json);
}

/// @nodoc
mixin _$CalendarSumamry {
  String get content => throw _privateConstructorUsedError;
  bool get holiday => throw _privateConstructorUsedError;
  bool get mainPlan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarSumamryCopyWith<CalendarSumamry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarSumamryCopyWith<$Res> {
  factory $CalendarSumamryCopyWith(
          CalendarSumamry value, $Res Function(CalendarSumamry) then) =
      _$CalendarSumamryCopyWithImpl<$Res>;
  $Res call({String content, bool holiday, bool mainPlan});
}

/// @nodoc
class _$CalendarSumamryCopyWithImpl<$Res>
    implements $CalendarSumamryCopyWith<$Res> {
  _$CalendarSumamryCopyWithImpl(this._value, this._then);

  final CalendarSumamry _value;
  // ignore: unused_field
  final $Res Function(CalendarSumamry) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? holiday = freezed,
    Object? mainPlan = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      holiday: holiday == freezed
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as bool,
      mainPlan: mainPlan == freezed
          ? _value.mainPlan
          : mainPlan // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarSumamryCopyWith<$Res>
    implements $CalendarSumamryCopyWith<$Res> {
  factory _$$_CalendarSumamryCopyWith(
          _$_CalendarSumamry value, $Res Function(_$_CalendarSumamry) then) =
      __$$_CalendarSumamryCopyWithImpl<$Res>;
  @override
  $Res call({String content, bool holiday, bool mainPlan});
}

/// @nodoc
class __$$_CalendarSumamryCopyWithImpl<$Res>
    extends _$CalendarSumamryCopyWithImpl<$Res>
    implements _$$_CalendarSumamryCopyWith<$Res> {
  __$$_CalendarSumamryCopyWithImpl(
      _$_CalendarSumamry _value, $Res Function(_$_CalendarSumamry) _then)
      : super(_value, (v) => _then(v as _$_CalendarSumamry));

  @override
  _$_CalendarSumamry get _value => super._value as _$_CalendarSumamry;

  @override
  $Res call({
    Object? content = freezed,
    Object? holiday = freezed,
    Object? mainPlan = freezed,
  }) {
    return _then(_$_CalendarSumamry(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      holiday: holiday == freezed
          ? _value.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as bool,
      mainPlan: mainPlan == freezed
          ? _value.mainPlan
          : mainPlan // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarSumamry implements _CalendarSumamry {
  _$_CalendarSumamry(
      {required this.content, this.holiday = false, this.mainPlan = false});

  factory _$_CalendarSumamry.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarSumamryFromJson(json);

  @override
  final String content;
  @override
  @JsonKey()
  final bool holiday;
  @override
  @JsonKey()
  final bool mainPlan;

  @override
  String toString() {
    return 'CalendarSumamry(content: $content, holiday: $holiday, mainPlan: $mainPlan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarSumamry &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.holiday, holiday) &&
            const DeepCollectionEquality().equals(other.mainPlan, mainPlan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(holiday),
      const DeepCollectionEquality().hash(mainPlan));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarSumamryCopyWith<_$_CalendarSumamry> get copyWith =>
      __$$_CalendarSumamryCopyWithImpl<_$_CalendarSumamry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarSumamryToJson(this);
  }
}

abstract class _CalendarSumamry implements CalendarSumamry {
  factory _CalendarSumamry(
      {required final String content,
      final bool holiday,
      final bool mainPlan}) = _$_CalendarSumamry;

  factory _CalendarSumamry.fromJson(Map<String, dynamic> json) =
      _$_CalendarSumamry.fromJson;

  @override
  String get content => throw _privateConstructorUsedError;
  @override
  bool get holiday => throw _privateConstructorUsedError;
  @override
  bool get mainPlan => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarSumamryCopyWith<_$_CalendarSumamry> get copyWith =>
      throw _privateConstructorUsedError;
}
