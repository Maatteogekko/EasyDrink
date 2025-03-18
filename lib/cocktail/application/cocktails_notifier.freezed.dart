// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cocktails_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult? Function(Set<Cocktail> cocktails, Filter filter, String message,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
    TResult? Function(_Failure value)? failure,
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
      _$CocktailsStateCopyWithImpl<$Res, CocktailsState>;
  @useResult
  $Res call({Set<Cocktail> cocktails, Filter filter});

  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class _$CocktailsStateCopyWithImpl<$Res, $Val extends CocktailsState>
    implements $CocktailsStateCopyWith<$Res> {
  _$CocktailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cocktails = null,
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      cocktails: null == cocktails
          ? _value.cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as Set<Cocktail>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilterCopyWith<$Res> get filter {
    return $FilterCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<Cocktail> cocktails, Filter filter});

  @override
  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CocktailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cocktails = null,
    Object? filter = null,
  }) {
    return _then(_$InitialImpl(
      cocktails: null == cocktails
          ? _value._cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as Set<Cocktail>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl(
      {required final Set<Cocktail> cocktails, required this.filter})
      : _cocktails = cocktails;

  final Set<Cocktail> _cocktails;
  @override
  Set<Cocktail> get cocktails {
    if (_cocktails is EqualUnmodifiableSetView) return _cocktails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_cocktails);
  }

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._cocktails, _cocktails) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cocktails), filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

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
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult? Function(Set<Cocktail> cocktails, Filter filter, String message,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
    TResult? Function(_Failure value)? failure,
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
      {required final Set<Cocktail> cocktails,
      required final Filter filter}) = _$InitialImpl;

  @override
  Set<Cocktail> get cocktails;
  @override
  Filter get filter;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<Cocktail> cocktails, Filter filter});

  @override
  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CocktailsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cocktails = null,
    Object? filter = null,
  }) {
    return _then(_$LoadingImpl(
      cocktails: null == cocktails
          ? _value._cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as Set<Cocktail>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl(
      {required final Set<Cocktail> cocktails, required this.filter})
      : _cocktails = cocktails;

  final Set<Cocktail> _cocktails;
  @override
  Set<Cocktail> get cocktails {
    if (_cocktails is EqualUnmodifiableSetView) return _cocktails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_cocktails);
  }

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._cocktails, _cocktails) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cocktails), filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

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
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult? Function(Set<Cocktail> cocktails, Filter filter, String message,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
    TResult? Function(_Failure value)? failure,
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
      {required final Set<Cocktail> cocktails,
      required final Filter filter}) = _$LoadingImpl;

  @override
  Set<Cocktail> get cocktails;
  @override
  Filter get filter;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<Cocktail> cocktails, Filter filter});

  @override
  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$CocktailsStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cocktails = null,
    Object? filter = null,
  }) {
    return _then(_$DataImpl(
      cocktails: null == cocktails
          ? _value._cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as Set<Cocktail>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
    ));
  }
}

/// @nodoc

class _$DataImpl with DiagnosticableTreeMixin implements _Data {
  const _$DataImpl(
      {required final Set<Cocktail> cocktails, required this.filter})
      : _cocktails = cocktails;

  final Set<Cocktail> _cocktails;
  @override
  Set<Cocktail> get cocktails {
    if (_cocktails is EqualUnmodifiableSetView) return _cocktails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_cocktails);
  }

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality()
                .equals(other._cocktails, _cocktails) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cocktails), filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

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
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult? Function(Set<Cocktail> cocktails, Filter filter, String message,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
    TResult? Function(_Failure value)? failure,
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
      {required final Set<Cocktail> cocktails,
      required final Filter filter}) = _$DataImpl;

  @override
  Set<Cocktail> get cocktails;
  @override
  Filter get filter;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $CocktailsStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Set<Cocktail> cocktails,
      Filter filter,
      String message,
      void Function()? failedAction});

  @override
  $FilterCopyWith<$Res> get filter;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CocktailsStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cocktails = null,
    Object? filter = null,
    Object? message = null,
    Object? failedAction = freezed,
  }) {
    return _then(_$FailureImpl(
      cocktails: null == cocktails
          ? _value._cocktails
          : cocktails // ignore: cast_nullable_to_non_nullable
              as Set<Cocktail>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as Filter,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      failedAction: freezed == failedAction
          ? _value.failedAction
          : failedAction // ignore: cast_nullable_to_non_nullable
              as void Function()?,
    ));
  }
}

/// @nodoc

class _$FailureImpl with DiagnosticableTreeMixin implements _Failure {
  const _$FailureImpl(
      {required final Set<Cocktail> cocktails,
      required this.filter,
      required this.message,
      this.failedAction})
      : _cocktails = cocktails;

  final Set<Cocktail> _cocktails;
  @override
  Set<Cocktail> get cocktails {
    if (_cocktails is EqualUnmodifiableSetView) return _cocktails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_cocktails);
  }

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            const DeepCollectionEquality()
                .equals(other._cocktails, _cocktails) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.failedAction, failedAction) ||
                other.failedAction == failedAction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cocktails),
      filter,
      message,
      failedAction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

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
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? initial,
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? loading,
    TResult? Function(Set<Cocktail> cocktails, Filter filter)? data,
    TResult? Function(Set<Cocktail> cocktails, Filter filter, String message,
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
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Data value)? data,
    TResult? Function(_Failure value)? failure,
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
      {required final Set<Cocktail> cocktails,
      required final Filter filter,
      required final String message,
      final void Function()? failedAction}) = _$FailureImpl;

  @override
  Set<Cocktail> get cocktails;
  @override
  Filter get filter;
  String get message;
  void Function()? get failedAction;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
