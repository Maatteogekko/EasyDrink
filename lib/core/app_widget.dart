import 'package:easy_drink/cocktail/application/cocktails_notifier.dart';
import 'package:easy_drink/cocktail/application/favorite_cocktails_notifier.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:easy_drink/core/infrastructure/sembast_database.dart';
import 'package:easy_drink/core/presentation/routes/app_router.dart';
import 'package:easy_drink/local_auth/application/local_auth_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => SembastDatabase()..init()),
        StateNotifierProvider<CocktailsNotifier, CocktailsState>(
          create: (_) => CocktailsNotifier(CocktailRepository()),
        ),
        ChangeNotifierProxyProvider<SembastDatabase, FavoriteCocktailsNotifier>(
          create: (_) => FavoriteCocktailsNotifier(
            SembastDatabase(),
            CocktailRepository(),
          ),
          update: (_, sembastDatabase, __) =>
              FavoriteCocktailsNotifier(sembastDatabase, CocktailRepository()),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiProvider(
            providers: [
              StateNotifierProvider<LocalAuthNotifier, LocalAuthState>(
                create: (context) => LocalAuthNotifier(context)..checkIfEnabled(),
              ),
            ],
            child: Builder(
              builder: (context) {
                return Consumer2<LocalAuthNotifier, LocalAuthState>(
                  builder: (context, notifier, state, child) {
                    state.whenOrNull(
                      enabled: (isAuthenticated, changedFromSettings) async {
                        if (!isAuthenticated) {
                          final didAuthenticate = await notifier.authenticate();
                          if (!didAuthenticate) {
                            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                          }
                        } else if (!changedFromSettings) {
                          _appRouter.pushAndPopUntil(
                            const MainViewRoute(),
                            predicate: (_) => false,
                          );
                        }
                      },
                      disabled: (changedFromSettings) {
                        if (!changedFromSettings) {
                          return _appRouter.pushAndPopUntil(
                            const MainViewRoute(),
                            predicate: (_) => false,
                          );
                        }
                      },
                    );

                    return child!;
                  },
                  child: MaterialApp.router(
                    debugShowCheckedModeBanner: false,
                    title: 'EasyDrink',

                    // navigation
                    routerConfig: _appRouter.config(),

                    //localization
                    supportedLocales: const [
                      Locale('it'),
                    ],
                    localizationsDelegates: const [
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],

                    // theming
                    scrollBehavior: const CupertinoScrollBehavior(),
                    color: const Color(0xFF2360DF),
                    theme: ThemeData(
                      primaryColor: const Color(0xFF2360DF),
                      textTheme: GoogleFonts.robotoTextTheme(
                        Theme.of(context).textTheme,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
