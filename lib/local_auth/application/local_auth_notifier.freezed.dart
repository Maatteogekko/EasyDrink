// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocalAuthStateTearOff {
  const _$LocalAuthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Enabled enabled(
      {required bool isAuthenticated, bool changedFromSettings = false}) {
    return _Enabled(
      isAuthenticated: isAuthenticated,
      changedFromSettings: changedFromSettings,
    );
  }

  _Disabled disabled({bool changedFromSettings = false}) {
    return _Disabled(
      changedFromSettings: changedFromSettings,
    );
  }
}

/// @nodoc
const $LocalAuthState = _$LocalAuthStateTearOff();

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
    TResult Function()? initial,
    TResult Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult Function(bool changedFromSettings)? disabled,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
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
      _$LocalAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocalAuthStateCopyWithImpl<$Res>
    implements $LocalAuthStateCopyWith<$Res> {
  _$LocalAuthStateCopyWithImpl(this._value, this._then);

  final LocalAuthState _value;
  // ignore: unused_field
  final $Res Function(LocalAuthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LocalAuthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LocalAuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
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
    TResult Function()? initial,
    TResult Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult Function(bool changedFromSettings)? disabled,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$EnabledCopyWith<$Res> {
  factory _$EnabledCopyWith(_Enabled value, $Res Function(_Enabled) then) =
      __$EnabledCopyWithImpl<$Res>;
  $Res call({bool isAuthenticated, bool changedFromSettings});
}

/// @nodoc
class __$EnabledCopyWithImpl<$Res> extends _$LocalAuthStateCopyWithImpl<$Res>
    implements _$EnabledCopyWith<$Res> {
  __$EnabledCopyWithImpl(_Enabled _value, $Res Function(_Enabled) _then)
      : super(_value, (v) => _then(v as _Enabled));

  @override
  _Enabled get _value => super._value as _Enabled;

  @override
  $Res call({
    Object? isAuthenticated = freezed,
    Object? changedFromSettings = freezed,
  }) {
    return _then(_Enabled(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      changedFromSettings: changedFromSettings == freezed
          ? _value.changedFromSettings
          : changedFromSettings // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Enabled implements _Enabled {
  const _$_Enabled(
      {required this.isAuthenticated, this.changedFromSettings = false});

  @override
  final bool isAuthenticated;
  @JsonKey(defaultValue: false)
  @override
  final bool changedFromSettings;

  @override
  String toString() {
    return 'LocalAuthState.enabled(isAuthenticated: $isAuthenticated, changedFromSettings: $changedFromSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Enabled &&
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
  _$EnabledCopyWith<_Enabled> get copyWith =>
      __$EnabledCopyWithImpl<_Enabled>(this, _$identity);

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
    TResult Function()? initial,
    TResult Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult Function(bool changedFromSettings)? disabled,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
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
      {required bool isAuthenticated, bool changedFromSettings}) = _$_Enabled;

  bool get isAuthenticated;
  bool get changedFromSettings;
  @JsonKey(ignore: true)
  _$EnabledCopyWith<_Enabled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DisabledCopyWith<$Res> {
  factory _$DisabledCopyWith(_Disabled value, $Res Function(_Disabled) then) =
      __$DisabledCopyWithImpl<$Res>;
  $Res call({bool changedFromSettings});
}

/// @nodoc
class __$DisabledCopyWithImpl<$Res> extends _$LocalAuthStateCopyWithImpl<$Res>
    implements _$DisabledCopyWith<$Res> {
  __$DisabledCopyWithImpl(_Disabled _value, $Res Function(_Disabled) _then)
      : super(_value, (v) => _then(v as _Disabled));

  @override
  _Disabled get _value => super._value as _Disabled;

  @override
  $Res call({
    Object? changedFromSettings = freezed,
  }) {
    return _then(_Disabled(
      changedFromSettings: changedFromSettings == freezed
          ? _value.changedFromSettings
          : changedFromSettings // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Disabled implements _Disabled {
  const _$_Disabled({this.changedFromSettings = false});

  @JsonKey(defaultValue: false)
  @override
  final bool changedFromSettings;

  @override
  String toString() {
    return 'LocalAuthState.disabled(changedFromSettings: $changedFromSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Disabled &&
            (identical(other.changedFromSettings, changedFromSettings) ||
                other.changedFromSettings == changedFromSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changedFromSettings);

  @JsonKey(ignore: true)
  @override
  _$DisabledCopyWith<_Disabled> get copyWith =>
      __$DisabledCopyWithImpl<_Disabled>(this, _$identity);

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
    TResult Function()? initial,
    TResult Function(bool isAuthenticated, bool changedFromSettings)? enabled,
    TResult Function(bool changedFromSettings)? disabled,
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
    TResult Function(_Initial value)? initial,
    TResult Function(_Enabled value)? enabled,
    TResult Function(_Disabled value)? disabled,
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
  const factory _Disabled({bool changedFromSettings}) = _$_Disabled;

  bool get changedFromSettings;
  @JsonKey(ignore: true)
  _$DisabledCopyWith<_Disabled> get copyWith =>
      throw _privateConstructorUsedError;
}
