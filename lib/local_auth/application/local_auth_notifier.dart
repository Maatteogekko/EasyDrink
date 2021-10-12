import 'dart:async';

import 'package:easy_drink/core/infrastructure/sembast_database.dart';
import 'package:easy_drink/local_auth/domain/local_auth_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:open_settings/open_settings.dart';
import 'package:provider/provider.dart';
import 'package:sembast/sembast.dart';
import 'package:state_notifier/state_notifier.dart';

part 'local_auth_notifier.freezed.dart';

const _iosStrings = IOSAuthMessages(
  cancelButton: 'Annulla',
  goToSettingsButton: 'Impostazioni',
  goToSettingsDescription: 'Perfavore imposta il tuo Touch ID.',
  lockOut: 'Perfavore riabilita il tuo Touch ID',
);

const _androidStrings = AndroidAuthMessages(
  cancelButton: 'Annulla',
  goToSettingsButton: 'Impostazioni',
  goToSettingsDescription: 'Apri le impostazioni.',
  biometricSuccess: "Successo!",
  signInTitle: "Autenticazione richiesta",
  biometricHint: "Verifica la tua identità",
);

@freezed
class LocalAuthState with _$LocalAuthState {
  const factory LocalAuthState.initial() = _Initial;
  const factory LocalAuthState.enabled({
    required bool isAuthenticated,
    @Default(false) bool changedFromSettings,
  }) = _Enabled;
  const factory LocalAuthState.disabled({
    @Default(false) bool changedFromSettings,
  }) = _Disabled;
}

class LocalAuthNotifier extends StateNotifier<LocalAuthState> with LocatorMixin {
  late final SembastDatabase _database;
  final _store = stringMapStoreFactory.store('localAuth');
  final BuildContext _context;

  LocalAuthNotifier(this._context) : super(const LocalAuthState.initial()) {
    _database = _context.read<SembastDatabase>()..init();
    unawaited(checkIfEnabled());
  }

  final _auth = LocalAuthentication();

  Future<void> checkIfEnabled() async {
    // HACK await the initialization of the db
    while (!_database.hasBeenInitialized) {
      await Future.delayed(const Duration(milliseconds: 100));
    }

    final record = await _store.findFirst(_database.instance);
    final bool isEnabled = record != null ? record.value["value"] as bool : false;

    if (isEnabled) {
      state = const LocalAuthState.enabled(
        isAuthenticated: false,
      );
    } else {
      state = const LocalAuthState.disabled();
    }
  }

  Future<void> enable() async {
    await _store.record('enabled').put(
      _database.instance,
      {"value": true},
    );

    state = const LocalAuthState.enabled(isAuthenticated: true, changedFromSettings: true);
  }

  Future<void> disable() async {
    await _store.record('enabled').put(
      _database.instance,
      {"value": false},
    );

    state = const LocalAuthState.disabled(changedFromSettings: true);
  }

  ///If this method is called when local_authentication is not enabled it will throw a [LocalAuthError].
  Future<bool> authenticate() async {
    if (state is! _Enabled) {
      throw LocalAuthError("Tried to authenticate with state: $state.");
    }

    final didAuthenticate = await _auth.authenticate(
      localizedReason: "Sblocca EasyDrink",
      // FIXME this does not work and throws a PlatformException
      useErrorDialogs: true,
      stickyAuth: true,
      iOSAuthStrings: _iosStrings,
      androidAuthStrings: _androidStrings,
    );

    state = LocalAuthState.enabled(isAuthenticated: didAuthenticate);
    return didAuthenticate;
  }

  // HACK workaround for the PlatformException thrown when no lockscreen is set on the device
  Future<bool> tryAuthenticate() async {
    try {
      final didAuthenticate = await _auth.authenticate(
        localizedReason: "Sblocca EasyDrink",
        // FIXME this does not work and throws a PlatformException
        useErrorDialogs: true,
        stickyAuth: true,
        androidAuthStrings: _androidStrings,
        iOSAuthStrings: _iosStrings,
      );
      return didAuthenticate;
    } on PlatformException {
      await OpenSettings.openBiometricEnrollSetting();
      return false;
    } finally {
      await _auth.stopAuthentication();
    }
  }
}
