import 'package:easy_drink/cocktail/application/cocktails_notifier.dart';
import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/core/presentation/card_scaffold.dart';
import 'package:easy_drink/main_view/core/presentation/widgets/cocktail_list_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read<CocktailsNotifier>().searchCocktail("cola"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CardScaffold(
      headerColor: Colors.blue,
      headerHeight: 65,
      headerChild: const HeaderText("Home"),
      bodyColor: Colors.white,
      bodyChild: Center(
        child: CocktailListView(
          cocktails: context.watch<CocktailsNotifier>().cocktails,
        ),
      ),
    );
  }
}
