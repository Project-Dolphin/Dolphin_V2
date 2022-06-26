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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeekdayData _$WeekdayDataFromJson(Map<String, dynamic> json) {
  return _WeekdayData.fromJson(json);
}

/// @nodoc
mixin _$WeekdayData {
  CalendarTerm? get term => throw _privateConstructorUsedError;
  bool? get mainPlan => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekdayDataCopyWith<WeekdayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekdayDataCopyWith<$Res> {
  factory $WeekdayDataCopyWith(
          WeekdayData value, $Res Function(WeekdayData) then) =
      _$WeekdayDataCopyWithImpl<$Res>;
  $Res call({CalendarTerm? term, bool? mainPlan, String content});

  $CalendarTermCopyWith<$Res>? get term;
}

/// @nodoc
class _$WeekdayDataCopyWithImpl<$Res> implements $WeekdayDataCopyWith<$Res> {
  _$WeekdayDataCopyWithImpl(this._value, this._then);

  final WeekdayData _value;
  // ignore: unused_field
  final $Res Function(WeekdayData) _then;

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
              as String,
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
abstract class _$$_WeekdayDataCopyWith<$Res>
    implements $WeekdayDataCopyWith<$Res> {
  factory _$$_WeekdayDataCopyWith(
          _$_WeekdayData value, $Res Function(_$_WeekdayData) then) =
      __$$_WeekdayDataCopyWithImpl<$Res>;
  @override
  $Res call({CalendarTerm? term, bool? mainPlan, String content});

  @override
  $CalendarTermCopyWith<$Res>? get term;
}

/// @nodoc
class __$$_WeekdayDataCopyWithImpl<$Res> extends _$WeekdayDataCopyWithImpl<$Res>
    implements _$$_WeekdayDataCopyWith<$Res> {
  __$$_WeekdayDataCopyWithImpl(
      _$_WeekdayData _value, $Res Function(_$_WeekdayData) _then)
      : super(_value, (v) => _then(v as _$_WeekdayData));

  @override
  _$_WeekdayData get _value => super._value as _$_WeekdayData;

  @override
  $Res call({
    Object? term = freezed,
    Object? mainPlan = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_WeekdayData(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeekdayData implements _WeekdayData {
  _$_WeekdayData({this.term, this.mainPlan, this.content = ''});

  factory _$_WeekdayData.fromJson(Map<String, dynamic> json) =>
      _$$_WeekdayDataFromJson(json);

  @override
  final CalendarTerm? term;
  @override
  final bool? mainPlan;
  @override
  @JsonKey()
  final String content;

  @override
  String toString() {
    return 'WeekdayData(term: $term, mainPlan: $mainPlan, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeekdayData &&
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
  _$$_WeekdayDataCopyWith<_$_WeekdayData> get copyWith =>
      __$$_WeekdayDataCopyWithImpl<_$_WeekdayData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeekdayDataToJson(this);
  }
}

abstract class _WeekdayData implements WeekdayData {
  factory _WeekdayData(
      {final CalendarTerm? term,
      final bool? mainPlan,
      final String content}) = _$_WeekdayData;

  factory _WeekdayData.fromJson(Map<String, dynamic> json) =
      _$_WeekdayData.fromJson;

  @override
  CalendarTerm? get term => throw _privateConstructorUsedError;
  @override
  bool? get mainPlan => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WeekdayDataCopyWith<_$_WeekdayData> get copyWith =>
      throw _privateConstructorUsedError;
}
