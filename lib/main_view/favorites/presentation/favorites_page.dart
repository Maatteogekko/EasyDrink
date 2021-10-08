import 'package:easy_drink/cocktail/application/favorite_cocktails_notifier.dart';
import 'package:easy_drink/cocktail/presentation/cocktail_list_view.dart';
import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/core/presentation/widgets/card_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read<FavoriteCocktailsNotifier>().getFavoritesFromDatabase(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CardScaffold(
      headerColor: Colors.amber,
      headerHeight: 65,
      headerChild: const HeaderText("Preferiti"),
      bodyColor: Colors.white,
      bodyChild: Consumer<FavoriteCocktailsNotifier>(
        builder: (context, notifier, child) => CocktailListView(
          detailPageColor: Colors.amber,
          cocktails: notifier.cocktails,
        ),
      ),
    );
  }
}
