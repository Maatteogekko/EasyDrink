import 'package:easy_drink/cocktail/application/cocktails_notifier.dart';
import 'package:easy_drink/cocktail/infrastructure/cocktail_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes/app_router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // IMPROVE use proxy providers to first create the repository
      create: (context) => CocktailsNotifier(CocktailRepository()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'EasyDrink',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
