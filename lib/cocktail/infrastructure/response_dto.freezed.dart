// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDTO _$ResponseDTOFromJson(Map<String, dynamic> json) {
  return _ResponseDTO.fromJson(json);
}

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
      _$ResponseDTOCopyWithImpl<$Res, ResponseDTO>;
  @useResult
  $Res call({List<CocktailDTO>? drinks});
}

/// @nodoc
class _$ResponseDTOCopyWithImpl<$Res, $Val extends ResponseDTO>
    implements $ResponseDTOCopyWith<$Res> {
  _$ResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = freezed,
  }) {
    return _then(_value.copyWith(
      drinks: freezed == drinks
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseDTOImplCopyWith<$Res>
    implements $ResponseDTOCopyWith<$Res> {
  factory _$$ResponseDTOImplCopyWith(
          _$ResponseDTOImpl value, $Res Function(_$ResponseDTOImpl) then) =
      __$$ResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CocktailDTO>? drinks});
}

/// @nodoc
class __$$ResponseDTOImplCopyWithImpl<$Res>
    extends _$ResponseDTOCopyWithImpl<$Res, _$ResponseDTOImpl>
    implements _$$ResponseDTOImplCopyWith<$Res> {
  __$$ResponseDTOImplCopyWithImpl(
      _$ResponseDTOImpl _value, $Res Function(_$ResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drinks = freezed,
  }) {
    return _then(_$ResponseDTOImpl(
      drinks: freezed == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CocktailDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDTOImpl extends _ResponseDTO {
  const _$ResponseDTOImpl({final List<CocktailDTO>? drinks})
      : _drinks = drinks,
        super._();

  factory _$ResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDTOImplFromJson(json);

  final List<CocktailDTO>? _drinks;
  @override
  List<CocktailDTO>? get drinks {
    final value = _drinks;
    if (value == null) return null;
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ResponseDTO(drinks: $drinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDTOImpl &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDTOImplCopyWith<_$ResponseDTOImpl> get copyWith =>
      __$$ResponseDTOImplCopyWithImpl<_$ResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _ResponseDTO extends ResponseDTO {
  const factory _ResponseDTO({final List<CocktailDTO>? drinks}) =
      _$ResponseDTOImpl;
  const _ResponseDTO._() : super._();

  factory _ResponseDTO.fromJson(Map<String, dynamic> json) =
      _$ResponseDTOImpl.fromJson;

  @override
  List<CocktailDTO>? get drinks;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDTOImplCopyWith<_$ResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
