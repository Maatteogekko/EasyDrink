// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterTearOff {
  const _$FilterTearOff();

  _Filter call(
      {List<String> ingredients = const [],
      List<Category> categories = Category.values,
      List<Alcoholic> alcoholicList = Alcoholic.values}) {
    return _Filter(
      ingredients: ingredients,
      categories: categories,
      alcoholicList: alcoholicList,
    );
  }
}

/// @nodoc
const $Filter = _$FilterTearOff();

/// @nodoc
mixin _$Filter {
  List<String> get ingredients => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Alcoholic> get alcoholicList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res>;
  $Res call(
      {List<String> ingredients,
      List<Category> categories,
      List<Alcoholic> alcoholicList});
}

/// @nodoc
class _$FilterCopyWithImpl<$Res> implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  final Filter _value;
  // ignore: unused_field
  final $Res Function(Filter) _then;

  @override
  $Res call({
    Object? ingredients = freezed,
    Object? categories = freezed,
    Object? alcoholicList = freezed,
  }) {
    return _then(_value.copyWith(
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      alcoholicList: alcoholicList == freezed
          ? _value.alcoholicList
          : alcoholicList // ignore: cast_nullable_to_non_nullable
              as List<Alcoholic>,
    ));
  }
}

/// @nodoc
abstract class _$FilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$FilterCopyWith(_Filter value, $Res Function(_Filter) then) =
      __$FilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> ingredients,
      List<Category> categories,
      List<Alcoholic> alcoholicList});
}

/// @nodoc
class __$FilterCopyWithImpl<$Res> extends _$FilterCopyWithImpl<$Res>
    implements _$FilterCopyWith<$Res> {
  __$FilterCopyWithImpl(_Filter _value, $Res Function(_Filter) _then)
      : super(_value, (v) => _then(v as _Filter));

  @override
  _Filter get _value => super._value as _Filter;

  @override
  $Res call({
    Object? ingredients = freezed,
    Object? categories = freezed,
    Object? alcoholicList = freezed,
  }) {
    return _then(_Filter(
      ingredients: ingredients == freezed
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      alcoholicList: alcoholicList == freezed
          ? _value.alcoholicList
          : alcoholicList // ignore: cast_nullable_to_non_nullable
              as List<Alcoholic>,
    ));
  }
}

/// @nodoc

class _$_Filter extends _Filter {
  const _$_Filter(
      {this.ingredients = const [],
      this.categories = Category.values,
      this.alcoholicList = Alcoholic.values})
      : super._();

  @JsonKey(defaultValue: const [])
  @override
  final List<String> ingredients;
  @JsonKey(defaultValue: Category.values)
  @override
  final List<Category> categories;
  @JsonKey(defaultValue: Alcoholic.values)
  @override
  final List<Alcoholic> alcoholicList;

  @override
  String toString() {
    return 'Filter(ingredients: $ingredients, categories: $categories, alcoholicList: $alcoholicList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Filter &&
            (identical(other.ingredients, ingredients) ||
                const DeepCollectionEquality()
                    .equals(other.ingredients, ingredients)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.alcoholicList, alcoholicList) ||
                const DeepCollectionEquality()
                    .equals(other.alcoholicList, alcoholicList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ingredients) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(alcoholicList);

  @JsonKey(ignore: true)
  @override
  _$FilterCopyWith<_Filter> get copyWith =>
      __$FilterCopyWithImpl<_Filter>(this, _$identity);
}

abstract class _Filter extends Filter {
  const factory _Filter(
      {List<String> ingredients,
      List<Category> categories,
      List<Alcoholic> alcoholicList}) = _$_Filter;
  const _Filter._() : super._();

  @override
  List<String> get ingredients => throw _privateConstructorUsedError;
  @override
  List<Category> get categories => throw _privateConstructorUsedError;
  @override
  List<Alcoholic> get alcoholicList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterCopyWith<_Filter> get copyWith => throw _privateConstructorUsedError;
}
