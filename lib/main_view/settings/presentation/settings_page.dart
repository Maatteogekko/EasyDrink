import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/application/favorite_cocktails_notifier.dart';
import 'package:easy_drink/core/presentation/widgets/centered_layout.dart';
import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/local_auth/application/local_auth_notifier.dart';
import 'package:easy_drink/main_view/core/presentation/widgets/card_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return CardScaffold(
      headerColor: Colors.purple,
      headerHeight: 65,
      headerChild: const HeaderText("Impostazioni"),
      bodyColor: Colors.white,
      bodyChild: width < 600
          ? const _SettingsList()
          : CenteredLayout(
              maxWidth: 500,
              child: Card(
                elevation: 6,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const _SettingsList(),
              ),
            ),
    );
  }
}

class _SettingsList extends StatelessWidget {
  const _SettingsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<LocalAuthNotifier, LocalAuthState>(
      builder: (context, notifier, state, child) => SettingsList(
        shrinkWrap: true,
        backgroundColor: const Color(0x55F1E5F3),
        sections: [
          SettingsSection(
            title: "Generali",
            titlePadding: const EdgeInsets.all(16),
            titleTextStyle: Theme.of(context).textTheme.headline6,
            tiles: [
              SettingsTile(
                title: 'Elimina i preferiti',
                leading: const Icon(Icons.delete_rounded),
                onPressed: (context) => _showConfirmDialog(context: context),
              ),
              SettingsTile.switchTile(
                title: 'Usa blocco app',
                leading: const Icon(Icons.lock),
                switchValue: state.map(
                  initial: (_) => false,
                  disabled: (_) => false,
                  enabled: (_) => true,
                ),
                onToggle: (bool isActive) async {
                  bool canAuthenticate = false;
                  if (isActive) {
                    canAuthenticate = await notifier.tryAuthenticate();
                  }
                  if (canAuthenticate || !isActive) {
                    isActive ? notifier.enable() : notifier.disable();
                  }
                },
              ),
              const SettingsTile(title: ''),
              SettingsTile(
                title: 'Grazie a:',
                trailing: Image.asset(
                  "assets/images/the_cocktail_db_logo.png",
                  width: 200,
                ),
                onPressed: (_) => launch("https://www.thecocktaildb.com"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Future<void> _showConfirmDialog({
  required BuildContext context,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Confermi?',
          textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        content: const Text(
          'Cliccando su conferma tutti i tuoi preferiti sarrano eliminati difinitivamene.',
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: <Widget>[
          TextButton(
            child: const Text('Annulla'),
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red),
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: const Text('Conferma'),
            onPressed: () {
              context.read<FavoriteCocktailsNotifier>().removeAllFavoritesFromDatabase();
              AutoRouter.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
