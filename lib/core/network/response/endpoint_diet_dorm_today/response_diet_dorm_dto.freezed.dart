// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_diet_dorm_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DietDormWrapper _$DietDormWrapperFromJson(Map<String, dynamic> json) {
  return _DietDormWrapper.fromJson(json);
}

/// @nodoc
mixin _$DietDormWrapper {
  List<String> get morning => throw _privateConstructorUsedError;
  List<String> get lunch => throw _privateConstructorUsedError;
  List<String> get dinner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DietDormWrapperCopyWith<DietDormWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DietDormWrapperCopyWith<$Res> {
  factory $DietDormWrapperCopyWith(
          DietDormWrapper value, $Res Function(DietDormWrapper) then) =
      _$DietDormWrapperCopyWithImpl<$Res>;
  $Res call({List<String> morning, List<String> lunch, List<String> dinner});
}

/// @nodoc
class _$DietDormWrapperCopyWithImpl<$Res>
    implements $DietDormWrapperCopyWith<$Res> {
  _$DietDormWrapperCopyWithImpl(this._value, this._then);

  final DietDormWrapper _value;
  // ignore: unused_field
  final $Res Function(DietDormWrapper) _then;

  @override
  $Res call({
    Object? morning = freezed,
    Object? lunch = freezed,
    Object? dinner = freezed,
  }) {
    return _then(_value.copyWith(
      morning: morning == freezed
          ? _value.morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lunch: lunch == freezed
          ? _value.lunch
          : lunch // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dinner: dinner == freezed
          ? _value.dinner
          : dinner // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_DietDormWrapperCopyWith<$Res>
    implements $DietDormWrapperCopyWith<$Res> {
  factory _$$_DietDormWrapperCopyWith(
          _$_DietDormWrapper value, $Res Function(_$_DietDormWrapper) then) =
      __$$_DietDormWrapperCopyWithImpl<$Res>;
  @override
  $Res call({List<String> morning, List<String> lunch, List<String> dinner});
}

/// @nodoc
class __$$_DietDormWrapperCopyWithImpl<$Res>
    extends _$DietDormWrapperCopyWithImpl<$Res>
    implements _$$_DietDormWrapperCopyWith<$Res> {
  __$$_DietDormWrapperCopyWithImpl(
      _$_DietDormWrapper _value, $Res Function(_$_DietDormWrapper) _then)
      : super(_value, (v) => _then(v as _$_DietDormWrapper));

  @override
  _$_DietDormWrapper get _value => super._value as _$_DietDormWrapper;

  @override
  $Res call({
    Object? morning = freezed,
    Object? lunch = freezed,
    Object? dinner = freezed,
  }) {
    return _then(_$_DietDormWrapper(
      morning: morning == freezed
          ? _value._morning
          : morning // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lunch: lunch == freezed
          ? _value._lunch
          : lunch // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dinner: dinner == freezed
          ? _value._dinner
          : dinner // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DietDormWrapper implements _DietDormWrapper {
  _$_DietDormWrapper(
      {final List<String> morning = const <String>[],
      final List<String> lunch = const <String>[],
      final List<String> dinner = const <String>[]})
      : _morning = morning,
        _lunch = lunch,
        _dinner = dinner;

  factory _$_DietDormWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_DietDormWrapperFromJson(json);

  final List<String> _morning;
  @override
  @JsonKey()
  List<String> get morning {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_morning);
  }

  final List<String> _lunch;
  @override
  @JsonKey()
  List<String> get lunch {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lunch);
  }

  final List<String> _dinner;
  @override
  @JsonKey()
  List<String> get dinner {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dinner);
  }

  @override
  String toString() {
    return 'DietDormWrapper(morning: $morning, lunch: $lunch, dinner: $dinner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DietDormWrapper &&
            const DeepCollectionEquality().equals(other._morning, _morning) &&
            const DeepCollectionEquality().equals(other._lunch, _lunch) &&
            const DeepCollectionEquality().equals(other._dinner, _dinner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_morning),
      const DeepCollectionEquality().hash(_lunch),
      const DeepCollectionEquality().hash(_dinner));

  @JsonKey(ignore: true)
  @override
  _$$_DietDormWrapperCopyWith<_$_DietDormWrapper> get copyWith =>
      __$$_DietDormWrapperCopyWithImpl<_$_DietDormWrapper>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DietDormWrapperToJson(this);
  }
}

abstract class _DietDormWrapper implements DietDormWrapper {
  factory _DietDormWrapper(
      {final List<String> morning,
      final List<String> lunch,
      final List<String> dinner}) = _$_DietDormWrapper;

  factory _DietDormWrapper.fromJson(Map<String, dynamic> json) =
      _$_DietDormWrapper.fromJson;

  @override
  List<String> get morning => throw _privateConstructorUsedError;
  @override
  List<String> get lunch => throw _privateConstructorUsedError;
  @override
  List<String> get dinner => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DietDormWrapperCopyWith<_$_DietDormWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
