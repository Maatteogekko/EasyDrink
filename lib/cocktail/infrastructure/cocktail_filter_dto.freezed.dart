// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cocktail_filter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CocktailFilterDTO _$CocktailFilterDTOFromJson(Map<String, dynamic> json) {
  return _CocktailFilterDTO.fromJson(json);
}

/// @nodoc
class _$CocktailFilterDTOTearOff {
  const _$CocktailFilterDTOTearOff();

  _CocktailFilterDTO call(
      {required String idDrink,
      required String strDrink,
      required String strDrinkThumb}) {
    return _CocktailFilterDTO(
      idDrink: idDrink,
      strDrink: strDrink,
      strDrinkThumb: strDrinkThumb,
    );
  }

  CocktailFilterDTO fromJson(Map<String, Object> json) {
    return CocktailFilterDTO.fromJson(json);
  }
}

/// @nodoc
const $CocktailFilterDTO = _$CocktailFilterDTOTearOff();

/// @nodoc
mixin _$CocktailFilterDTO {
  String get idDrink => throw _privateConstructorUsedError;
  String get strDrink => throw _privateConstructorUsedError;
  String get strDrinkThumb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CocktailFilterDTOCopyWith<CocktailFilterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailFilterDTOCopyWith<$Res> {
  factory $CocktailFilterDTOCopyWith(
          CocktailFilterDTO value, $Res Function(CocktailFilterDTO) then) =
      _$CocktailFilterDTOCopyWithImpl<$Res>;
  $Res call({String idDrink, String strDrink, String strDrinkThumb});
}

/// @nodoc
class _$CocktailFilterDTOCopyWithImpl<$Res>
    implements $CocktailFilterDTOCopyWith<$Res> {
  _$CocktailFilterDTOCopyWithImpl(this._value, this._then);

  final CocktailFilterDTO _value;
  // ignore: unused_field
  final $Res Function(CocktailFilterDTO) _then;

  @override
  $Res call({
    Object? idDrink = freezed,
    Object? strDrink = freezed,
    Object? strDrinkThumb = freezed,
  }) {
    return _then(_value.copyWith(
      idDrink: idDrink == freezed
          ? _value.idDrink
          : idDrink // ignore: cast_nullable_to_non_nullable
              as String,
      strDrink: strDrink == freezed
          ? _value.strDrink
          : strDrink // ignore: cast_nullable_to_non_nullable
              as String,
      strDrinkThumb: strDrinkThumb == freezed
          ? _value.strDrinkThumb
          : strDrinkThumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CocktailFilterDTOCopyWith<$Res>
    implements $CocktailFilterDTOCopyWith<$Res> {
  factory _$CocktailFilterDTOCopyWith(
          _CocktailFilterDTO value, $Res Function(_CocktailFilterDTO) then) =
      __$CocktailFilterDTOCopyWithImpl<$Res>;
  @override
  $Res call({String idDrink, String strDrink, String strDrinkThumb});
}

/// @nodoc
class __$CocktailFilterDTOCopyWithImpl<$Res>
    extends _$CocktailFilterDTOCopyWithImpl<$Res>
    implements _$CocktailFilterDTOCopyWith<$Res> {
  __$CocktailFilterDTOCopyWithImpl(
      _CocktailFilterDTO _value, $Res Function(_CocktailFilterDTO) _then)
      : super(_value, (v) => _then(v as _CocktailFilterDTO));

  @override
  _CocktailFilterDTO get _value => super._value as _CocktailFilterDTO;

  @override
  $Res call({
    Object? idDrink = freezed,
    Object? strDrink = freezed,
    Object? strDrinkThumb = freezed,
  }) {
    return _then(_CocktailFilterDTO(
      idDrink: idDrink == freezed
          ? _value.idDrink
          : idDrink // ignore: cast_nullable_to_non_nullable
              as String,
      strDrink: strDrink == freezed
          ? _value.strDrink
          : strDrink // ignore: cast_nullable_to_non_nullable
              as String,
      strDrinkThumb: strDrinkThumb == freezed
          ? _value.strDrinkThumb
          : strDrinkThumb // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CocktailFilterDTO implements _CocktailFilterDTO {
  const _$_CocktailFilterDTO(
      {required this.idDrink,
      required this.strDrink,
      required this.strDrinkThumb});

  factory _$_CocktailFilterDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CocktailFilterDTOFromJson(json);

  @override
  final String idDrink;
  @override
  final String strDrink;
  @override
  final String strDrinkThumb;

  @override
  String toString() {
    return 'CocktailFilterDTO(idDrink: $idDrink, strDrink: $strDrink, strDrinkThumb: $strDrinkThumb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CocktailFilterDTO &&
            (identical(other.idDrink, idDrink) ||
                const DeepCollectionEquality()
                    .equals(other.idDrink, idDrink)) &&
            (identical(other.strDrink, strDrink) ||
                const DeepCollectionEquality()
                    .equals(other.strDrink, strDrink)) &&
            (identical(other.strDrinkThumb, strDrinkThumb) ||
                const DeepCollectionEquality()
                    .equals(other.strDrinkThumb, strDrinkThumb)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(idDrink) ^
      const DeepCollectionEquality().hash(strDrink) ^
      const DeepCollectionEquality().hash(strDrinkThumb);

  @JsonKey(ignore: true)
  @override
  _$CocktailFilterDTOCopyWith<_CocktailFilterDTO> get copyWith =>
      __$CocktailFilterDTOCopyWithImpl<_CocktailFilterDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CocktailFilterDTOToJson(this);
  }
}

abstract class _CocktailFilterDTO implements CocktailFilterDTO {
  const factory _CocktailFilterDTO(
      {required String idDrink,
      required String strDrink,
      required String strDrinkThumb}) = _$_CocktailFilterDTO;

  factory _CocktailFilterDTO.fromJson(Map<String, dynamic> json) =
      _$_CocktailFilterDTO.fromJson;

  @override
  String get idDrink => throw _privateConstructorUsedError;
  @override
  String get strDrink => throw _privateConstructorUsedError;
  @override
  String get strDrinkThumb => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CocktailFilterDTOCopyWith<_CocktailFilterDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
