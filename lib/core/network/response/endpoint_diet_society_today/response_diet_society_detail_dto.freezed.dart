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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DietDetail _$DietDetailFromJson(Map<String, dynamic> json) {
  return _DietDetail.fromJson(json);
}

/// @nodoc
class _$DietDetailTearOff {
  const _$DietDetailTearOff();

  _DietDetail call({String? type, List<String>? menus}) {
    return _DietDetail(
      type: type,
      menus: menus,
    );
  }

  DietDetail fromJson(Map<String, Object?> json) {
    return DietDetail.fromJson(json);
  }
}

/// @nodoc
const $DietDetail = _$DietDetailTearOff();

/// @nodoc
mixin _$DietDetail {
  String? get type => throw _privateConstructorUsedError;
  List<String>? get menus => throw _privateConstructorUsedError;

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
  $Res call({String? type, List<String>? menus});
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
              as String?,
      menus: menus == freezed
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$DietDetailCopyWith<$Res> implements $DietDetailCopyWith<$Res> {
  factory _$DietDetailCopyWith(
          _DietDetail value, $Res Function(_DietDetail) then) =
      __$DietDetailCopyWithImpl<$Res>;
  @override
  $Res call({String? type, List<String>? menus});
}

/// @nodoc
class __$DietDetailCopyWithImpl<$Res> extends _$DietDetailCopyWithImpl<$Res>
    implements _$DietDetailCopyWith<$Res> {
  __$DietDetailCopyWithImpl(
      _DietDetail _value, $Res Function(_DietDetail) _then)
      : super(_value, (v) => _then(v as _DietDetail));

  @override
  _DietDetail get _value => super._value as _DietDetail;

  @override
  $Res call({
    Object? type = freezed,
    Object? menus = freezed,
  }) {
    return _then(_DietDetail(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      menus: menus == freezed
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DietDetail implements _DietDetail {
  _$_DietDetail({this.type, this.menus});

  factory _$_DietDetail.fromJson(Map<String, dynamic> json) =>
      _$$_DietDetailFromJson(json);

  @override
  final String? type;
  @override
  final List<String>? menus;

  @override
  String toString() {
    return 'DietDetail(type: $type, menus: $menus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DietDetail &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.menus, menus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(menus));

  @JsonKey(ignore: true)
  @override
  _$DietDetailCopyWith<_DietDetail> get copyWith =>
      __$DietDetailCopyWithImpl<_DietDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DietDetailToJson(this);
  }
}

abstract class _DietDetail implements DietDetail {
  factory _DietDetail({String? type, List<String>? menus}) = _$_DietDetail;

  factory _DietDetail.fromJson(Map<String, dynamic> json) =
      _$_DietDetail.fromJson;

  @override
  String? get type;
  @override
  List<String>? get menus;
  @override
  @JsonKey(ignore: true)
  _$DietDetailCopyWith<_DietDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
