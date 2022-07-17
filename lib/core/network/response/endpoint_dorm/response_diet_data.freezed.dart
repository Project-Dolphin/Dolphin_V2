// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_diet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DietData _$DietDataFromJson(Map<String, dynamic> json) {
  return _DietData.fromJson(json);
}

/// @nodoc
mixin _$DietData {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  List<String> get menus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DietDataCopyWith<DietData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietDataCopyWith<$Res> {
  factory $DietDataCopyWith(DietData value, $Res Function(DietData) then) =
      _$DietDataCopyWithImpl<$Res>;
  $Res call({String title, String subtitle, List<String> menus});
}

/// @nodoc
class _$DietDataCopyWithImpl<$Res> implements $DietDataCopyWith<$Res> {
  _$DietDataCopyWithImpl(this._value, this._then);

  final DietData _value;
  // ignore: unused_field
  final $Res Function(DietData) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? menus = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      menus: menus == freezed
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_DietDataCopyWith<$Res> implements $DietDataCopyWith<$Res> {
  factory _$$_DietDataCopyWith(
          _$_DietData value, $Res Function(_$_DietData) then) =
      __$$_DietDataCopyWithImpl<$Res>;
  @override
  $Res call({String title, String subtitle, List<String> menus});
}

/// @nodoc
class __$$_DietDataCopyWithImpl<$Res> extends _$DietDataCopyWithImpl<$Res>
    implements _$$_DietDataCopyWith<$Res> {
  __$$_DietDataCopyWithImpl(
      _$_DietData _value, $Res Function(_$_DietData) _then)
      : super(_value, (v) => _then(v as _$_DietData));

  @override
  _$_DietData get _value => super._value as _$_DietData;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? menus = freezed,
  }) {
    return _then(_$_DietData(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      menus: menus == freezed
          ? _value._menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DietData implements _DietData {
  _$_DietData(
      {this.title = '',
      this.subtitle = '',
      final List<String> menus = const <String>[]})
      : _menus = menus;

  factory _$_DietData.fromJson(Map<String, dynamic> json) =>
      _$$_DietDataFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String subtitle;
  final List<String> _menus;
  @override
  @JsonKey()
  List<String> get menus {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menus);
  }

  @override
  String toString() {
    return 'DietData(title: $title, subtitle: $subtitle, menus: $menus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DietData &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other._menus, _menus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(_menus));

  @JsonKey(ignore: true)
  @override
  _$$_DietDataCopyWith<_$_DietData> get copyWith =>
      __$$_DietDataCopyWithImpl<_$_DietData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DietDataToJson(this);
  }
}

abstract class _DietData implements DietData {
  factory _DietData(
      {final String title,
      final String subtitle,
      final List<String> menus}) = _$_DietData;

  factory _DietData.fromJson(Map<String, dynamic> json) = _$_DietData.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get subtitle => throw _privateConstructorUsedError;
  @override
  List<String> get menus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DietDataCopyWith<_$_DietData> get copyWith =>
      throw _privateConstructorUsedError;
}
