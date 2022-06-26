// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_notice_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeData _$NoticeDataFromJson(Map<String, dynamic> json) {
  return _NoticeData.fromJson(json);
}

/// @nodoc
mixin _$NoticeData {
  String? get title => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeDataCopyWith<NoticeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeDataCopyWith<$Res> {
  factory $NoticeDataCopyWith(
          NoticeData value, $Res Function(NoticeData) then) =
      _$NoticeDataCopyWithImpl<$Res>;
  $Res call({String? title, String? link, String? date});
}

/// @nodoc
class _$NoticeDataCopyWithImpl<$Res> implements $NoticeDataCopyWith<$Res> {
  _$NoticeDataCopyWithImpl(this._value, this._then);

  final NoticeData _value;
  // ignore: unused_field
  final $Res Function(NoticeData) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NoticeDataCopyWith<$Res>
    implements $NoticeDataCopyWith<$Res> {
  factory _$$_NoticeDataCopyWith(
          _$_NoticeData value, $Res Function(_$_NoticeData) then) =
      __$$_NoticeDataCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? link, String? date});
}

/// @nodoc
class __$$_NoticeDataCopyWithImpl<$Res> extends _$NoticeDataCopyWithImpl<$Res>
    implements _$$_NoticeDataCopyWith<$Res> {
  __$$_NoticeDataCopyWithImpl(
      _$_NoticeData _value, $Res Function(_$_NoticeData) _then)
      : super(_value, (v) => _then(v as _$_NoticeData));

  @override
  _$_NoticeData get _value => super._value as _$_NoticeData;

  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_NoticeData(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeData implements _NoticeData {
  _$_NoticeData({this.title, this.link, this.date});

  factory _$_NoticeData.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeDataFromJson(json);

  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? date;

  @override
  String toString() {
    return 'NoticeData(title: $title, link: $link, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticeData &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_NoticeDataCopyWith<_$_NoticeData> get copyWith =>
      __$$_NoticeDataCopyWithImpl<_$_NoticeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeDataToJson(this);
  }
}

abstract class _NoticeData implements NoticeData {
  factory _NoticeData(
      {final String? title,
      final String? link,
      final String? date}) = _$_NoticeData;

  factory _NoticeData.fromJson(Map<String, dynamic> json) =
      _$_NoticeData.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get link => throw _privateConstructorUsedError;
  @override
  String? get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeDataCopyWith<_$_NoticeData> get copyWith =>
      throw _privateConstructorUsedError;
}
