import 'package:easy_drink/cocktail/application/cocktails_notifier.dart';
import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/core/presentation/widgets/card_scaffold.dart';
import 'package:easy_drink/cocktail/presentation/cocktail_list_view.dart';
import 'package:easy_drink/main_view/home/presentation/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// TODO implement search and filter
class _HomePageState extends State<HomePage> {
  late FloatingSearchBarController _controller;
  var _query = '';

  @override
  void initState() {
    super.initState();
    _controller = FloatingSearchBarController();
    // Future.microtask(
    //   () => context.read<CocktailsNotifier>().searchCocktailByIngredient("Vodka"),
    // );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SearchBar(
        onSubmitted: (query) {
          context.read<CocktailsNotifier>().searchCocktailByName(query);
          _controller.close();
          setState(() {
            _query = query;
          });
        },
        controller: _controller,
        title: HeaderText(_query.isEmpty ? 'Home' : _query),
        body: FloatingSearchBarScrollNotifier(
          child: CardScaffold(
            headerColor: Theme.of(context).primaryColor,
            headerHeight: 0,
            headerChild: const SizedBox.shrink(),
            bodyColor: Colors.white,
            bodyChild: _query.isEmpty
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 32),
                        child: Text(
                          'Che ne pensi di questi ?',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      Flexible(
                        child: RefreshIndicator(
                          onRefresh: () async {
                            context.read<CocktailsNotifier>().getRandoms();
                          },
                          child: CocktailListView(
                            detailPageColor: Theme.of(context).primaryColor,
                            action: () => context.read<CocktailsNotifier>().getRandoms(),
                          ),
                        ),
                      ),
                    ],
                  )
                : CocktailListView(
                    detailPageColor: Theme.of(context).primaryColor,
                    action: () => context.read<CocktailsNotifier>().getFavoritesFromDatabase(),
                  ),
          ),
        ),
      ),
    );
  }
}
