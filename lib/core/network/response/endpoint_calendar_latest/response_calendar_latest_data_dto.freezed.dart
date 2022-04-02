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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LatestData _$LatestDataFromJson(Map<String, dynamic> json) {
  return _LatestData.fromJson(json);
}

/// @nodoc
class _$LatestDataTearOff {
  const _$LatestDataTearOff();

  _LatestData call({LatestTerm? term, bool? mainPlan, String? content}) {
    return _LatestData(
      term: term,
      mainPlan: mainPlan,
      content: content,
    );
  }

  LatestData fromJson(Map<String, Object?> json) {
    return LatestData.fromJson(json);
  }
}

/// @nodoc
const $LatestData = _$LatestDataTearOff();

/// @nodoc
mixin _$LatestData {
  LatestTerm? get term => throw _privateConstructorUsedError;
  bool? get mainPlan => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

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
  $Res call({LatestTerm? term, bool? mainPlan, String? content});

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
abstract class _$LatestDataCopyWith<$Res> implements $LatestDataCopyWith<$Res> {
  factory _$LatestDataCopyWith(
          _LatestData value, $Res Function(_LatestData) then) =
      __$LatestDataCopyWithImpl<$Res>;
  @override
  $Res call({LatestTerm? term, bool? mainPlan, String? content});

  @override
  $LatestTermCopyWith<$Res>? get term;
}

/// @nodoc
class __$LatestDataCopyWithImpl<$Res> extends _$LatestDataCopyWithImpl<$Res>
    implements _$LatestDataCopyWith<$Res> {
  __$LatestDataCopyWithImpl(
      _LatestData _value, $Res Function(_LatestData) _then)
      : super(_value, (v) => _then(v as _LatestData));

  @override
  _LatestData get _value => super._value as _LatestData;

  @override
  $Res call({
    Object? term = freezed,
    Object? mainPlan = freezed,
    Object? content = freezed,
  }) {
    return _then(_LatestData(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LatestData implements _LatestData {
  _$_LatestData({this.term, this.mainPlan, this.content});

  factory _$_LatestData.fromJson(Map<String, dynamic> json) =>
      _$$_LatestDataFromJson(json);

  @override
  final LatestTerm? term;
  @override
  final bool? mainPlan;
  @override
  final String? content;

  @override
  String toString() {
    return 'LatestData(term: $term, mainPlan: $mainPlan, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LatestData &&
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
  _$LatestDataCopyWith<_LatestData> get copyWith =>
      __$LatestDataCopyWithImpl<_LatestData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LatestDataToJson(this);
  }
}

abstract class _LatestData implements LatestData {
  factory _LatestData({LatestTerm? term, bool? mainPlan, String? content}) =
      _$_LatestData;

  factory _LatestData.fromJson(Map<String, dynamic> json) =
      _$_LatestData.fromJson;

  @override
  LatestTerm? get term;
  @override
  bool? get mainPlan;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$LatestDataCopyWith<_LatestData> get copyWith =>
      throw _privateConstructorUsedError;
}
