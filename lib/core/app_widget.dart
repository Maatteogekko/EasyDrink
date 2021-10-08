import 'package:easy_drink/cocktail/application/cocktails_notifier.dart';
import 'package:easy_drink/cocktail/application/favorite_cocktails_notifier.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:easy_drink/core/infrastructure/sembast_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'presentation/routes/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => SembastDatabase()..init()),
        Provider(create: (_) => CocktailRepository()),
        ChangeNotifierProxyProvider<CocktailRepository, CocktailsNotifier>(
          create: (_) => CocktailsNotifier(
            CocktailRepository(),
          ),
          update: (_, cocktailRepository, __) => CocktailsNotifier(cocktailRepository),
        ),
        ChangeNotifierProxyProvider<SembastDatabase, FavoriteCocktailsNotifier>(
          create: (_) => FavoriteCocktailsNotifier(
            SembastDatabase(),
          ),
          update: (_, sembastDatabase, __) => FavoriteCocktailsNotifier(sembastDatabase),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'EasyDrink',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
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
