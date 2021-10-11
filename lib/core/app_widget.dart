import 'package:easy_drink/cocktail/application/cocktails_notifier.dart';
import 'package:easy_drink/cocktail/application/favorite_cocktails_notifier.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:easy_drink/core/infrastructure/sembast_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'presentation/routes/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    // TODO navigate after authentication or immediately, based on the setting
    _appRouter.pushAndPopUntil(
      const MainViewRoute(),
      predicate: (_) => false,
    );

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
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'EasyDrink',

        // navigation
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),

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
  }
}
