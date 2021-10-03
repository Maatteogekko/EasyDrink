import 'package:easy_drink/home/infrastructure/cocktail_repository.dart';
import 'package:flutter/material.dart';
import 'package:wakelock/wakelock.dart';

import 'core/presentation/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO remove in production
  await Wakelock.enable();

  // TODO remove in production
  final repo = CocktailRepository();
  final list = await repo.getCocktailByName("margarita");
  for (var item in list!) {
    print(item.name);
  }

  runApp(AppWidget());
}
