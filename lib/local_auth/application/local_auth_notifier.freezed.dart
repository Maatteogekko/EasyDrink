// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isAuthenticated, bool changedFromSettings)
        enabled,
    required TResult Function(bool changedFromSettings) disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult? Function(bool changedFromSettings)? disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult Function(bool changedFromSettings)? disabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Enabled value) enabled,
    required TResult Function(_Disabled value) disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Enabled value)? enabled,
    TResult? Function(_Disabled value)? disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalAuthStateCopyWith<$Res> {
  factory $LocalAuthStateCopyWith(
          LocalAuthState value, $Res Function(LocalAuthState) then) =
      _$LocalAuthStateCopyWithImpl<$Res, LocalAuthState>;
}

/// @nodoc
class _$LocalAuthStateCopyWithImpl<$Res, $Val extends LocalAuthState>
    implements $LocalAuthStateCopyWith<$Res> {
  _$LocalAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LocalAuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isAuthenticated, bool changedFromSettings)
        enabled,
    required TResult Function(bool changedFromSettings) disabled,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult? Function(bool changedFromSettings)? disabled,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult Function(bool changedFromSettings)? disabled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Enabled value) enabled,
    required TResult Function(_Disabled value) disabled,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Enabled value)? enabled,
    TResult? Function(_Disabled value)? disabled,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocalAuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$EnabledImplCopyWith<$Res> {
  factory _$$EnabledImplCopyWith(
          _$EnabledImpl value, $Res Function(_$EnabledImpl) then) =
      __$$EnabledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAuthenticated, bool changedFromSettings});
}

/// @nodoc
class __$$EnabledImplCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$EnabledImpl>
    implements _$$EnabledImplCopyWith<$Res> {
  __$$EnabledImplCopyWithImpl(
      _$EnabledImpl _value, $Res Function(_$EnabledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
    Object? changedFromSettings = null,
  }) {
    return _then(_$EnabledImpl(
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      changedFromSettings: null == changedFromSettings
          ? _value.changedFromSettings
          : changedFromSettings // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EnabledImpl implements _Enabled {
  const _$EnabledImpl(
      {required this.isAuthenticated, this.changedFromSettings = false});

  @override
  final bool isAuthenticated;
  @override
  @JsonKey()
  final bool changedFromSettings;

  @override
  String toString() {
    return 'LocalAuthState.enabled(isAuthenticated: $isAuthenticated, changedFromSettings: $changedFromSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnabledImpl &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.changedFromSettings, changedFromSettings) ||
                other.changedFromSettings == changedFromSettings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isAuthenticated, changedFromSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnabledImplCopyWith<_$EnabledImpl> get copyWith =>
      __$$EnabledImplCopyWithImpl<_$EnabledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isAuthenticated, bool changedFromSettings)
        enabled,
    required TResult Function(bool changedFromSettings) disabled,
  }) {
    return enabled(isAuthenticated, changedFromSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult? Function(bool changedFromSettings)? disabled,
  }) {
    return enabled?.call(isAuthenticated, changedFromSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult Function(bool changedFromSettings)? disabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled(isAuthenticated, changedFromSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Enabled value) enabled,
    required TResult Function(_Disabled value) disabled,
  }) {
    return enabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Enabled value)? enabled,
    TResult? Function(_Disabled value)? disabled,
  }) {
    return enabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled(this);
    }
    return orElse();
  }
}

abstract class _Enabled implements LocalAuthState {
  const factory _Enabled(
      {required final bool isAuthenticated,
      final bool changedFromSettings}) = _$EnabledImpl;

  bool get isAuthenticated;
  bool get changedFromSettings;
  @JsonKey(ignore: true)
  _$$EnabledImplCopyWith<_$EnabledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisabledImplCopyWith<$Res> {
  factory _$$DisabledImplCopyWith(
          _$DisabledImpl value, $Res Function(_$DisabledImpl) then) =
      __$$DisabledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool changedFromSettings});
}

/// @nodoc
class __$$DisabledImplCopyWithImpl<$Res>
    extends _$LocalAuthStateCopyWithImpl<$Res, _$DisabledImpl>
    implements _$$DisabledImplCopyWith<$Res> {
  __$$DisabledImplCopyWithImpl(
      _$DisabledImpl _value, $Res Function(_$DisabledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changedFromSettings = null,
  }) {
    return _then(_$DisabledImpl(
      changedFromSettings: null == changedFromSettings
          ? _value.changedFromSettings
          : changedFromSettings // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DisabledImpl implements _Disabled {
  const _$DisabledImpl({this.changedFromSettings = false});

  @override
  @JsonKey()
  final bool changedFromSettings;

  @override
  String toString() {
    return 'LocalAuthState.disabled(changedFromSettings: $changedFromSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisabledImpl &&
            (identical(other.changedFromSettings, changedFromSettings) ||
                other.changedFromSettings == changedFromSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changedFromSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisabledImplCopyWith<_$DisabledImpl> get copyWith =>
      __$$DisabledImplCopyWithImpl<_$DisabledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isAuthenticated, bool changedFromSettings)
        enabled,
    required TResult Function(bool changedFromSettings) disabled,
  }) {
    return disabled(changedFromSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult? Function(bool changedFromSettings)? disabled,
  }) {
    return disabled?.call(changedFromSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult Function(bool changedFromSettings)? disabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(changedFromSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Enabled value) enabled,
    required TResult Function(_Disabled value) disabled,
  }) {
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Enabled value)? enabled,
    TResult? Function(_Disabled value)? disabled,
  }) {
    return disabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class _Disabled implements LocalAuthState {
  const factory _Disabled({final bool changedFromSettings}) = _$DisabledImpl;

  bool get changedFromSettings;
  @JsonKey(ignore: true)
  _$$DisabledImplCopyWith<_$DisabledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
