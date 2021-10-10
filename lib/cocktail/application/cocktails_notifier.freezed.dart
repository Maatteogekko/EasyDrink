// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cocktails_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CocktailsStateTearOff {
  const _$CocktailsStateTearOff();

  _Initial initial({required Set<Cocktail> cocktails, required Filter filter}) {
    return _Initial(
      cocktails: cocktails,
      filter: filter,
    );
  }

  _Loading loading({required Set<Cocktail> cocktails, required Filter filter}) {
    return _Loading(
      cocktails: cocktails,
      filter: filter,
    );
  }

  _Data data({required Set<Cocktail> cocktails, required Filter filter}) {
    return _Data(
      cocktails: cocktails,
      filter: filter,
    );
  }

  _Failure failure(
      {required Set<Cocktail> cocktails,
      required Filter filter,
      required String message,
      void Function()? failedAction}) {
    return _Failure(
      cocktails: cocktails,
      filter: filter,
      message: message,
      failedAction: failedAction,
    );
  }
}

/// @nodoc
const $CocktailsState = _$CocktailsStateTearOff();

/// @nodoc
mixin _$CocktailsState {
  Set<Cocktail> get cocktails => throw _privateConstructorUsedError;
  Filter get filter => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Cocktail> cocktails, Filter filter) initial,
    required TResult Function(Set<Cocktail> cocktails, Filter filter) loading,
    required TResult Function(Set<Cocktail> cocktails, Filter filter) data,
    required TResult Function(Set<Cocktail> cocktails, Filter filter,
            String message, void Function()? failedAction)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult Function(Set<Cocktail> cocktails, Filter filter, String message,
            void Function()? failedAction)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult Function(Set<Cocktail> cocktails, Filter filter, String message,
            void Function()? failedAction)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CocktailsStateCopyWith<CocktailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CocktailsStateCopyWith<$Res> {
  factory $CocktailsStateCopyWith(
          CocktailsState value, $Res Function(CocktailsState) then) =
      _$CocktailsStateCopyWithImpl<$Res>;
  $Res call({Set<Cocktail> cocktails, Filter filter});

  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$CocktailsStateCopyWithImpl<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  _$CocktailsStateCopyWithImpl(this._value, this._then);

  final CocktailsState _value;
  // ignore: unused_field
  final $Res Function(CocktailsState) _then;

  @override
  $Res call({
    Object? cocktails = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      cocktails: cocktails == freezed
          ? _value.cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as Set<Cocktail>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }

  @override
  $FilterCopyWith<$Res> get filter {
    return $FilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value));
    });
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Set<Cocktail> cocktails, Filter filter});

  @override
  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CocktailsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? cocktails = freezed,
    Object? filter = freezed,
  }) {
    return _then(_Initial(
      cocktails: cocktails == freezed
          ? _value.cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as Set<Cocktail>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial({required this.cocktails, required this.filter});

  @override
  final Set<Cocktail> cocktails;
  @override
  final Filter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CocktailsState.initial(cocktails: $cocktails, filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CocktailsState.initial'))
      ..add(DiagnosticsProperty('cocktails', cocktails))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.cocktails, cocktails) ||
                const DeepCollectionEquality()
                    .equals(other.cocktails, cocktails)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cocktails) ^
      const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Cocktail> cocktails, Filter filter) initial,
    required TResult Function(Set<Cocktail> cocktails, Filter filter) loading,
    required TResult Function(Set<Cocktail> cocktails, Filter filter) data,
    required TResult Function(Set<Cocktail> cocktails, Filter filter,
            String message, void Function()? failedAction)
        failure,
  }) {
    return initial(cocktails, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult Function(Set<Cocktail> cocktails, Filter filter, String message,
            void Function()? failedAction)?
        failure,
  }) {
    return initial?.call(cocktails, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult Function(Set<Cocktail> cocktails, Filter filter, String message,
            void Function()? failedAction)?
        failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(cocktails, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CocktailsState {
  const factory _Initial(
      {required Set<Cocktail> cocktails, required Filter filter}) = _$_Initial;

  @override
  Set<Cocktail> get cocktails => throw _privateConstructorUsedError;
  @override
  Filter get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({Set<Cocktail> cocktails, Filter filter});

  @override
  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$CocktailsStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? cocktails = freezed,
    Object? filter = freezed,
  }) {
    return _then(_Loading(
      cocktails: cocktails == freezed
          ? _value.cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as Set<Cocktail>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_Loading with DiagnosticableTreeMixin implements _Loading {
  const _$_Loading({required this.cocktails, required this.filter});

  @override
  final Set<Cocktail> cocktails;
  @override
  final Filter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CocktailsState.loading(cocktails: $cocktails, filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CocktailsState.loading'))
      ..add(DiagnosticsProperty('cocktails', cocktails))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loading &&
            (identical(other.cocktails, cocktails) ||
                const DeepCollectionEquality()
                    .equals(other.cocktails, cocktails)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cocktails) ^
      const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Cocktail> cocktails, Filter filter) initial,
    required TResult Function(Set<Cocktail> cocktails, Filter filter) loading,
    required TResult Function(Set<Cocktail> cocktails, Filter filter) data,
    required TResult Function(Set<Cocktail> cocktails, Filter filter,
            String message, void Function()? failedAction)
        failure,
  }) {
    return loading(cocktails, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult Function(Set<Cocktail> cocktails, Filter filter, String message,
            void Function()? failedAction)?
        failure,
  }) {
    return loading?.call(cocktails, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult Function(Set<Cocktail> cocktails, Filter filter, String message,
            void Function()? failedAction)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(cocktails, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CocktailsState {
  const factory _Loading(
      {required Set<Cocktail> cocktails, required Filter filter}) = _$_Loading;

  @override
  Set<Cocktail> get cocktails => throw _privateConstructorUsedError;
  @override
  Filter get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $CocktailsStateCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({Set<Cocktail> cocktails, Filter filter});

  @override
  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$CocktailsStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? cocktails = freezed,
    Object? filter = freezed,
  }) {
    return _then(_Data(
      cocktails: cocktails == freezed
          ? _value.cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as Set<Cocktail>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data({required this.cocktails, required this.filter});

  @override
  final Set<Cocktail> cocktails;
  @override
  final Filter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CocktailsState.data(cocktails: $cocktails, filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CocktailsState.data'))
      ..add(DiagnosticsProperty('cocktails', cocktails))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.cocktails, cocktails) ||
                const DeepCollectionEquality()
                    .equals(other.cocktails, cocktails)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cocktails) ^
      const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Cocktail> cocktails, Filter filter) initial,
    required TResult Function(Set<Cocktail> cocktails, Filter filter) loading,
    required TResult Function(Set<Cocktail> cocktails, Filter filter) data,
    required TResult Function(Set<Cocktail> cocktails, Filter filter,
            String message, void Function()? failedAction)
        failure,
  }) {
    return data(cocktails, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult Function(Set<Cocktail> cocktails, Filter filter, String message,
            void Function()? failedAction)?
        failure,
  }) {
    return data?.call(cocktails, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult Function(Set<Cocktail> cocktails, Filter filter, String message,
            void Function()? failedAction)?
        failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(cocktails, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements CocktailsState {
  const factory _Data(
      {required Set<Cocktail> cocktails, required Filter filter}) = _$_Data;

  @override
  Set<Cocktail> get cocktails => throw _privateConstructorUsedError;
  @override
  Filter get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  @override
  $Res call(
      {Set<Cocktail> cocktails,
      Filter filter,
      String message,
      void Function()? failedAction});

  @override
  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$CocktailsStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? cocktails = freezed,
    Object? filter = freezed,
    Object? message = freezed,
    Object? failedAction = freezed,
  }) {
    return _then(_Failure(
      cocktails: cocktails == freezed
          ? _value.cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as Set<Cocktail>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      failedAction: failedAction == freezed
          ? _value.failedAction
          : failedAction // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$_Failure with DiagnosticableTreeMixin implements _Failure {
  const _$_Failure(
      {required this.cocktails,
      required this.filter,
      required this.message,
      this.failedAction});

  @override
  final Set<Cocktail> cocktails;
  @override
  final Filter filter;
  @override
  final String message;
  @override
  final void Function()? failedAction;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CocktailsState.failure(cocktails: $cocktails, filter: $filter, message: $message, failedAction: $failedAction)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CocktailsState.failure'))
      ..add(DiagnosticsProperty('cocktails', cocktails))
      ..add(DiagnosticsProperty('filter', filter))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('failedAction', failedAction));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.cocktails, cocktails) ||
                const DeepCollectionEquality()
                    .equals(other.cocktails, cocktails)) &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.failedAction, failedAction) ||
                const DeepCollectionEquality()
                    .equals(other.failedAction, failedAction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cocktails) ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(failedAction);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<Cocktail> cocktails, Filter filter) initial,
    required TResult Function(Set<Cocktail> cocktails, Filter filter) loading,
    required TResult Function(Set<Cocktail> cocktails, Filter filter) data,
    required TResult Function(Set<Cocktail> cocktails, Filter filter,
            String message, void Function()? failedAction)
        failure,
  }) {
    return failure(cocktails, filter, message, failedAction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult Function(Set<Cocktail> cocktails, Filter filter, String message,
            void Function()? failedAction)?
        failure,
  }) {
    return failure?.call(cocktails, filter, message, failedAction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult Function(Set<Cocktail> cocktails, Filter filter, String message,
            void Function()? failedAction)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(cocktails, filter, message, failedAction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CocktailsState {
  const factory _Failure(
      {required Set<Cocktail> cocktails,
      required Filter filter,
      required String message,
      void Function()? failedAction}) = _$_Failure;

  @override
  Set<Cocktail> get cocktails => throw _privateConstructorUsedError;
  @override
  Filter get filter => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  void Function()? get failedAction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
