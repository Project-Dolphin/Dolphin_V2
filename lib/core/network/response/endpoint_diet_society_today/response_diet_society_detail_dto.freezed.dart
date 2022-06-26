// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_diet_society_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DietDetail _$DietDetailFromJson(Map<String, dynamic> json) {
  return _DietDetail.fromJson(json);
}

/// @nodoc
mixin _$DietDetail {
  String get type => throw _privateConstructorUsedError;
  List<String> get menus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DietDetailCopyWith<DietDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietDetailCopyWith<$Res> {
  factory $DietDetailCopyWith(
          DietDetail value, $Res Function(DietDetail) then) =
      _$DietDetailCopyWithImpl<$Res>;
  $Res call({String type, List<String> menus});
}

/// @nodoc
class _$DietDetailCopyWithImpl<$Res> implements $DietDetailCopyWith<$Res> {
  _$DietDetailCopyWithImpl(this._value, this._then);

  final DietDetail _value;
  // ignore: unused_field
  final $Res Function(DietDetail) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? menus = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      menus: menus == freezed
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_DietDetailCopyWith<$Res>
    implements $DietDetailCopyWith<$Res> {
  factory _$$_DietDetailCopyWith(
          _$_DietDetail value, $Res Function(_$_DietDetail) then) =
      __$$_DietDetailCopyWithImpl<$Res>;
  @override
  $Res call({String type, List<String> menus});
}

/// @nodoc
class __$$_DietDetailCopyWithImpl<$Res> extends _$DietDetailCopyWithImpl<$Res>
    implements _$$_DietDetailCopyWith<$Res> {
  __$$_DietDetailCopyWithImpl(
      _$_DietDetail _value, $Res Function(_$_DietDetail) _then)
      : super(_value, (v) => _then(v as _$_DietDetail));

  @override
  _$_DietDetail get _value => super._value as _$_DietDetail;

  @override
  $Res call({
    Object? type = freezed,
    Object? menus = freezed,
  }) {
    return _then(_$_DietDetail(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
class _$_DietDetail implements _DietDetail {
  _$_DietDetail({this.type = '', final List<String> menus = const <String>[]})
      : _menus = menus;

  factory _$_DietDetail.fromJson(Map<String, dynamic> json) =>
      _$$_DietDetailFromJson(json);

  @override
  @JsonKey()
  final String type;
  final List<String> _menus;
  @override
  @JsonKey()
  List<String> get menus {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menus);
  }

  @override
  String toString() {
    return 'DietDetail(type: $type, menus: $menus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DietDetail &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other._menus, _menus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_menus));

  @JsonKey(ignore: true)
  @override
  _$$_DietDetailCopyWith<_$_DietDetail> get copyWith =>
      __$$_DietDetailCopyWithImpl<_$_DietDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DietDetailToJson(this);
  }
}

abstract class _DietDetail implements DietDetail {
  factory _DietDetail({final String type, final List<String> menus}) =
      _$_DietDetail;

  factory _DietDetail.fromJson(Map<String, dynamic> json) =
      _$_DietDetail.fromJson;

  @override
  String get type => throw _privateConstructorUsedError;
  @override
  List<String> get menus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DietDetailCopyWith<_$_DietDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
