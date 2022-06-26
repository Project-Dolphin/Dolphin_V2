// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_calendar_latest_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatestData _$LatestDataFromJson(Map<String, dynamic> json) {
  return _LatestData.fromJson(json);
}

/// @nodoc
mixin _$LatestData {
  LatestTerm? get term => throw _privateConstructorUsedError;
  bool? get mainPlan => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int? get dDay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatestDataCopyWith<LatestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestDataCopyWith<$Res> {
  factory $LatestDataCopyWith(
          LatestData value, $Res Function(LatestData) then) =
      _$LatestDataCopyWithImpl<$Res>;
  $Res call({LatestTerm? term, bool? mainPlan, String? content, int? dDay});

  $LatestTermCopyWith<$Res>? get term;
}

/// @nodoc
class _$LatestDataCopyWithImpl<$Res> implements $LatestDataCopyWith<$Res> {
  _$LatestDataCopyWithImpl(this._value, this._then);

  final LatestData _value;
  // ignore: unused_field
  final $Res Function(LatestData) _then;

  @override
  $Res call({
    Object? term = freezed,
    Object? mainPlan = freezed,
    Object? content = freezed,
    Object? dDay = freezed,
  }) {
    return _then(_value.copyWith(
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as LatestTerm?,
      mainPlan: mainPlan == freezed
          ? _value.mainPlan
          : mainPlan // ignore: cast_nullable_to_non_nullable
              as bool?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      dDay: dDay == freezed
          ? _value.dDay
          : dDay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $LatestTermCopyWith<$Res>? get term {
    if (_value.term == null) {
      return null;
    }

    return $LatestTermCopyWith<$Res>(_value.term!, (value) {
      return _then(_value.copyWith(term: value));
    });
  }
}

/// @nodoc
abstract class _$$_LatestDataCopyWith<$Res>
    implements $LatestDataCopyWith<$Res> {
  factory _$$_LatestDataCopyWith(
          _$_LatestData value, $Res Function(_$_LatestData) then) =
      __$$_LatestDataCopyWithImpl<$Res>;
  @override
  $Res call({LatestTerm? term, bool? mainPlan, String? content, int? dDay});

  @override
  $LatestTermCopyWith<$Res>? get term;
}

/// @nodoc
class __$$_LatestDataCopyWithImpl<$Res> extends _$LatestDataCopyWithImpl<$Res>
    implements _$$_LatestDataCopyWith<$Res> {
  __$$_LatestDataCopyWithImpl(
      _$_LatestData _value, $Res Function(_$_LatestData) _then)
      : super(_value, (v) => _then(v as _$_LatestData));

  @override
  _$_LatestData get _value => super._value as _$_LatestData;

  @override
  $Res call({
    Object? term = freezed,
    Object? mainPlan = freezed,
    Object? content = freezed,
    Object? dDay = freezed,
  }) {
    return _then(_$_LatestData(
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as LatestTerm?,
      mainPlan: mainPlan == freezed
          ? _value.mainPlan
          : mainPlan // ignore: cast_nullable_to_non_nullable
              as bool?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      dDay: dDay == freezed
          ? _value.dDay
          : dDay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatestData implements _LatestData {
  _$_LatestData({this.term, this.mainPlan, this.content, this.dDay});

  factory _$_LatestData.fromJson(Map<String, dynamic> json) =>
      _$$_LatestDataFromJson(json);

  @override
  final LatestTerm? term;
  @override
  final bool? mainPlan;
  @override
  final String? content;
  @override
  final int? dDay;

  @override
  String toString() {
    return 'LatestData(term: $term, mainPlan: $mainPlan, content: $content, dDay: $dDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LatestData &&
            const DeepCollectionEquality().equals(other.term, term) &&
            const DeepCollectionEquality().equals(other.mainPlan, mainPlan) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.dDay, dDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(term),
      const DeepCollectionEquality().hash(mainPlan),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(dDay));

  @JsonKey(ignore: true)
  @override
  _$$_LatestDataCopyWith<_$_LatestData> get copyWith =>
      __$$_LatestDataCopyWithImpl<_$_LatestData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatestDataToJson(this);
  }
}

abstract class _LatestData implements LatestData {
  factory _LatestData(
      {final LatestTerm? term,
      final bool? mainPlan,
      final String? content,
      final int? dDay}) = _$_LatestData;

  factory _LatestData.fromJson(Map<String, dynamic> json) =
      _$_LatestData.fromJson;

  @override
  LatestTerm? get term => throw _privateConstructorUsedError;
  @override
  bool? get mainPlan => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  int? get dDay => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LatestDataCopyWith<_$_LatestData> get copyWith =>
      throw _privateConstructorUsedError;
}
