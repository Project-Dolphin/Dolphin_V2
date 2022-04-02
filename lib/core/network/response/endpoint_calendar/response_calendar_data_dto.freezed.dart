// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarData _$CalendarDataFromJson(Map<String, dynamic> json) {
  return _CalendarData.fromJson(json);
}

/// @nodoc
class _$CalendarDataTearOff {
  const _$CalendarDataTearOff();

  _CalendarData call({CalendarTerm? term, bool? mainPlan, String? content}) {
    return _CalendarData(
      term: term,
      mainPlan: mainPlan,
      content: content,
    );
  }

  CalendarData fromJson(Map<String, Object?> json) {
    return CalendarData.fromJson(json);
  }
}

/// @nodoc
const $CalendarData = _$CalendarDataTearOff();

/// @nodoc
mixin _$CalendarData {
  CalendarTerm? get term => throw _privateConstructorUsedError;
  bool? get mainPlan => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarDataCopyWith<CalendarData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDataCopyWith<$Res> {
  factory $CalendarDataCopyWith(
          CalendarData value, $Res Function(CalendarData) then) =
      _$CalendarDataCopyWithImpl<$Res>;
  $Res call({CalendarTerm? term, bool? mainPlan, String? content});

  $CalendarTermCopyWith<$Res>? get term;
}

/// @nodoc
class _$CalendarDataCopyWithImpl<$Res> implements $CalendarDataCopyWith<$Res> {
  _$CalendarDataCopyWithImpl(this._value, this._then);

  final CalendarData _value;
  // ignore: unused_field
  final $Res Function(CalendarData) _then;

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
              as CalendarTerm?,
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

  @override
  $CalendarTermCopyWith<$Res>? get term {
    if (_value.term == null) {
      return null;
    }

    return $CalendarTermCopyWith<$Res>(_value.term!, (value) {
      return _then(_value.copyWith(term: value));
    });
  }
}

/// @nodoc
abstract class _$CalendarDataCopyWith<$Res>
    implements $CalendarDataCopyWith<$Res> {
  factory _$CalendarDataCopyWith(
          _CalendarData value, $Res Function(_CalendarData) then) =
      __$CalendarDataCopyWithImpl<$Res>;
  @override
  $Res call({CalendarTerm? term, bool? mainPlan, String? content});

  @override
  $CalendarTermCopyWith<$Res>? get term;
}

/// @nodoc
class __$CalendarDataCopyWithImpl<$Res> extends _$CalendarDataCopyWithImpl<$Res>
    implements _$CalendarDataCopyWith<$Res> {
  __$CalendarDataCopyWithImpl(
      _CalendarData _value, $Res Function(_CalendarData) _then)
      : super(_value, (v) => _then(v as _CalendarData));

  @override
  _CalendarData get _value => super._value as _CalendarData;

  @override
  $Res call({
    Object? term = freezed,
    Object? mainPlan = freezed,
    Object? content = freezed,
  }) {
    return _then(_CalendarData(
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as CalendarTerm?,
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
class _$_CalendarData implements _CalendarData {
  _$_CalendarData({this.term, this.mainPlan, this.content});

  factory _$_CalendarData.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarDataFromJson(json);

  @override
  final CalendarTerm? term;
  @override
  final bool? mainPlan;
  @override
  final String? content;

  @override
  String toString() {
    return 'CalendarData(term: $term, mainPlan: $mainPlan, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarData &&
            const DeepCollectionEquality().equals(other.term, term) &&
            const DeepCollectionEquality().equals(other.mainPlan, mainPlan) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(term),
      const DeepCollectionEquality().hash(mainPlan),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$CalendarDataCopyWith<_CalendarData> get copyWith =>
      __$CalendarDataCopyWithImpl<_CalendarData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarDataToJson(this);
  }
}

abstract class _CalendarData implements CalendarData {
  factory _CalendarData({CalendarTerm? term, bool? mainPlan, String? content}) =
      _$_CalendarData;

  factory _CalendarData.fromJson(Map<String, dynamic> json) =
      _$_CalendarData.fromJson;

  @override
  CalendarTerm? get term;
  @override
  bool? get mainPlan;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$CalendarDataCopyWith<_CalendarData> get copyWith =>
      throw _privateConstructorUsedError;
}
