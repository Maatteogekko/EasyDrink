import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

import 'cocktail/infrastructure/cocktail_repository.dart';
import 'core/presentation/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO remove in production
  await Wakelock.enable();

  // TODO remove in production
  final repo = CocktailRepository();
  final list = await repo.getCocktailsByName("margarita");
  for (var item in list) {
    print(item.name);
  }

  runApp(AppWidget());
}
