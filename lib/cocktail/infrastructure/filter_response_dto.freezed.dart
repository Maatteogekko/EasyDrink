// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterResponseDTO _$FilterResponseDTOFromJson(Map<String, dynamic> json) {
  return _FilterResponseDTO.fromJson(json);
}

/// @nodoc
class _$FilterResponseDTOTearOff {
  const _$FilterResponseDTOTearOff();

  _FilterResponseDTO call({required List<CocktailFilterDTO>? drinks}) {
    return _FilterResponseDTO(
      drinks: drinks,
    );
  }

  FilterResponseDTO fromJson(Map<String, Object> json) {
    return FilterResponseDTO.fromJson(json);
  }
}

/// @nodoc
const $FilterResponseDTO = _$FilterResponseDTOTearOff();

/// @nodoc
mixin _$FilterResponseDTO {
  List<CocktailFilterDTO>? get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterResponseDTOCopyWith<FilterResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterResponseDTOCopyWith<$Res> {
  factory $FilterResponseDTOCopyWith(
          FilterResponseDTO value, $Res Function(FilterResponseDTO) then) =
      _$FilterResponseDTOCopyWithImpl<$Res>;
  $Res call({List<CocktailFilterDTO>? drinks});
}

/// @nodoc
class _$FilterResponseDTOCopyWithImpl<$Res>
    implements $FilterResponseDTOCopyWith<$Res> {
  _$FilterResponseDTOCopyWithImpl(this._value, this._then);

  final FilterResponseDTO _value;
  // ignore: unused_field
  final $Res Function(FilterResponseDTO) _then;

  @override
  $Res call({
    Object? drinks = freezed,
  }) {
    return _then(_value.copyWith(
      drinks: drinks == freezed
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailFilterDTO>?,
    ));
  }
}

/// @nodoc
abstract class _$FilterResponseDTOCopyWith<$Res>
    implements $FilterResponseDTOCopyWith<$Res> {
  factory _$FilterResponseDTOCopyWith(
          _FilterResponseDTO value, $Res Function(_FilterResponseDTO) then) =
      __$FilterResponseDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<CocktailFilterDTO>? drinks});
}

/// @nodoc
class __$FilterResponseDTOCopyWithImpl<$Res>
    extends _$FilterResponseDTOCopyWithImpl<$Res>
    implements _$FilterResponseDTOCopyWith<$Res> {
  __$FilterResponseDTOCopyWithImpl(
      _FilterResponseDTO _value, $Res Function(_FilterResponseDTO) _then)
      : super(_value, (v) => _then(v as _FilterResponseDTO));

  @override
  _FilterResponseDTO get _value => super._value as _FilterResponseDTO;

  @override
  $Res call({
    Object? drinks = freezed,
  }) {
    return _then(_FilterResponseDTO(
      drinks: drinks == freezed
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailFilterDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterResponseDTO implements _FilterResponseDTO {
  const _$_FilterResponseDTO({required this.drinks});

  factory _$_FilterResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FilterResponseDTOFromJson(json);

  @override
  final List<CocktailFilterDTO>? drinks;

  @override
  String toString() {
    return 'FilterResponseDTO(drinks: $drinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterResponseDTO &&
            (identical(other.drinks, drinks) ||
                const DeepCollectionEquality().equals(other.drinks, drinks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(drinks);

  @JsonKey(ignore: true)
  @override
  _$FilterResponseDTOCopyWith<_FilterResponseDTO> get copyWith =>
      __$FilterResponseDTOCopyWithImpl<_FilterResponseDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterResponseDTOToJson(this);
  }
}

abstract class _FilterResponseDTO implements FilterResponseDTO {
  const factory _FilterResponseDTO({required List<CocktailFilterDTO>? drinks}) =
      _$_FilterResponseDTO;

  factory _FilterResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_FilterResponseDTO.fromJson;

  @override
  List<CocktailFilterDTO>? get drinks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterResponseDTOCopyWith<_FilterResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
