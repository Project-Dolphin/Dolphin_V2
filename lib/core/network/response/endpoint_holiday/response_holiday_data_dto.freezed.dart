// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_holiday_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HolidayData _$HolidayDataFromJson(Map<String, dynamic> json) {
  return _HolidayData.fromJson(json);
}

/// @nodoc
mixin _$HolidayData {
  HolidayTerm? get term => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolidayDataCopyWith<HolidayData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayDataCopyWith<$Res> {
  factory $HolidayDataCopyWith(
          HolidayData value, $Res Function(HolidayData) then) =
      _$HolidayDataCopyWithImpl<$Res>;
  $Res call({HolidayTerm? term, String? content});

  $HolidayTermCopyWith<$Res>? get term;
}

/// @nodoc
class _$HolidayDataCopyWithImpl<$Res> implements $HolidayDataCopyWith<$Res> {
  _$HolidayDataCopyWithImpl(this._value, this._then);

  final HolidayData _value;
  // ignore: unused_field
  final $Res Function(HolidayData) _then;

  @override
  $Res call({
    Object? term = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as HolidayTerm?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $HolidayTermCopyWith<$Res>? get term {
    if (_value.term == null) {
      return null;
    }

    return $HolidayTermCopyWith<$Res>(_value.term!, (value) {
      return _then(_value.copyWith(term: value));
    });
  }
}

/// @nodoc
abstract class _$$_HolidayDataCopyWith<$Res>
    implements $HolidayDataCopyWith<$Res> {
  factory _$$_HolidayDataCopyWith(
          _$_HolidayData value, $Res Function(_$_HolidayData) then) =
      __$$_HolidayDataCopyWithImpl<$Res>;
  @override
  $Res call({HolidayTerm? term, String? content});

  @override
  $HolidayTermCopyWith<$Res>? get term;
}

/// @nodoc
class __$$_HolidayDataCopyWithImpl<$Res> extends _$HolidayDataCopyWithImpl<$Res>
    implements _$$_HolidayDataCopyWith<$Res> {
  __$$_HolidayDataCopyWithImpl(
      _$_HolidayData _value, $Res Function(_$_HolidayData) _then)
      : super(_value, (v) => _then(v as _$_HolidayData));

  @override
  _$_HolidayData get _value => super._value as _$_HolidayData;

  @override
  $Res call({
    Object? term = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_HolidayData(
      term: term == freezed
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as HolidayTerm?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HolidayData implements _HolidayData {
  _$_HolidayData({this.term, this.content});

  factory _$_HolidayData.fromJson(Map<String, dynamic> json) =>
      _$$_HolidayDataFromJson(json);

  @override
  final HolidayTerm? term;
  @override
  final String? content;

  @override
  String toString() {
    return 'HolidayData(term: $term, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HolidayData &&
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
  _$$_HolidayDataCopyWith<_$_HolidayData> get copyWith =>
      __$$_HolidayDataCopyWithImpl<_$_HolidayData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HolidayDataToJson(this);
  }
}

abstract class _HolidayData implements HolidayData {
  factory _HolidayData({final HolidayTerm? term, final String? content}) =
      _$_HolidayData;

  factory _HolidayData.fromJson(Map<String, dynamic> json) =
      _$_HolidayData.fromJson;

  @override
  HolidayTerm? get term => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HolidayDataCopyWith<_$_HolidayData> get copyWith =>
      throw _privateConstructorUsedError;
}
