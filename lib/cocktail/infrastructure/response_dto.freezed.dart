// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseDTO _$ResponseDTOFromJson(Map<String, dynamic> json) {
  return _ResponseDTO.fromJson(json);
}

/// @nodoc
class _$ResponseDTOTearOff {
  const _$ResponseDTOTearOff();

  _ResponseDTO call({List<CocktailDTO>? drinks}) {
    return _ResponseDTO(
      drinks: drinks,
    );
  }

  ResponseDTO fromJson(Map<String, Object?> json) {
    return ResponseDTO.fromJson(json);
  }
}

/// @nodoc
const $ResponseDTO = _$ResponseDTOTearOff();

/// @nodoc
mixin _$ResponseDTO {
  List<CocktailDTO>? get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDTOCopyWith<ResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDTOCopyWith<$Res> {
  factory $ResponseDTOCopyWith(
          ResponseDTO value, $Res Function(ResponseDTO) then) =
      _$ResponseDTOCopyWithImpl<$Res>;
  $Res call({List<CocktailDTO>? drinks});
}

/// @nodoc
class _$ResponseDTOCopyWithImpl<$Res> implements $ResponseDTOCopyWith<$Res> {
  _$ResponseDTOCopyWithImpl(this._value, this._then);

  final ResponseDTO _value;
  // ignore: unused_field
  final $Res Function(ResponseDTO) _then;

  @override
  $Res call({
    Object? drinks = freezed,
  }) {
    return _then(_value.copyWith(
      drinks: drinks == freezed
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailDTO>?,
    ));
  }
}

/// @nodoc
abstract class _$ResponseDTOCopyWith<$Res>
    implements $ResponseDTOCopyWith<$Res> {
  factory _$ResponseDTOCopyWith(
          _ResponseDTO value, $Res Function(_ResponseDTO) then) =
      __$ResponseDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<CocktailDTO>? drinks});
}

/// @nodoc
class __$ResponseDTOCopyWithImpl<$Res> extends _$ResponseDTOCopyWithImpl<$Res>
    implements _$ResponseDTOCopyWith<$Res> {
  __$ResponseDTOCopyWithImpl(
      _ResponseDTO _value, $Res Function(_ResponseDTO) _then)
      : super(_value, (v) => _then(v as _ResponseDTO));

  @override
  _ResponseDTO get _value => super._value as _ResponseDTO;

  @override
  $Res call({
    Object? drinks = freezed,
  }) {
    return _then(_ResponseDTO(
      drinks: drinks == freezed
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseDTO extends _ResponseDTO {
  const _$_ResponseDTO({this.drinks}) : super._();

  factory _$_ResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseDTOFromJson(json);

  @override
  final List<CocktailDTO>? drinks;

  @override
  String toString() {
    return 'ResponseDTO(drinks: $drinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseDTO &&
            const DeepCollectionEquality().equals(other.drinks, drinks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(drinks));

  @JsonKey(ignore: true)
  @override
  _$ResponseDTOCopyWith<_ResponseDTO> get copyWith =>
      __$ResponseDTOCopyWithImpl<_ResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseDTOToJson(this);
  }
}

abstract class _ResponseDTO extends ResponseDTO {
  const factory _ResponseDTO({List<CocktailDTO>? drinks}) = _$_ResponseDTO;
  const _ResponseDTO._() : super._();

  factory _ResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_ResponseDTO.fromJson;

  @override
  List<CocktailDTO>? get drinks;
  @override
  @JsonKey(ignore: true)
  _$ResponseDTOCopyWith<_ResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
