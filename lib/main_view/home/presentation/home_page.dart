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

// TODO implement filter
class _HomePageState extends State<HomePage> {
  late FloatingSearchBarController _controller;
  String? _query;

  @override
  void initState() {
    super.initState();
    _controller = FloatingSearchBarController();
    Future.microtask(
      () => context.read<CocktailsNotifier>().getRandoms(),
    );
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
          _controller.close();
          if (query.isEmpty) {
            setState(() {
              _query = null;
              context.read<CocktailsNotifier>().getRandoms();
            });
          } else {
            context.read<CocktailsNotifier>().searchCocktailByName(query);
            setState(() {
              _query = query;
            });
          }
        },
        actions: [
          _searchbarAction,
        ],
        controller: _controller,
        title: HeaderText(_query ?? 'Home'),
        body: FloatingSearchBarScrollNotifier(
          child: CardScaffold(
            headerColor: Theme.of(context).primaryColor,
            headerHeight: 0,
            headerChild: const SizedBox.shrink(),
            bodyColor: Colors.white,
            bodyChild: Consumer<CocktailsNotifier>(
              builder: (context, notifier, child) {
                if (notifier.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                }
                // TODO add exception handling
                else {
                  if (_query == null) {
                    return Column(
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
                            onRefresh: notifier.getRandoms,
                            child: CocktailListView(
                              detailPageColor: Theme.of(context).primaryColor,
                              cocktails: notifier.cocktails,
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return CocktailListView(
                      detailPageColor: Theme.of(context).primaryColor,
                      cocktails: notifier.cocktails,
                    );
                  }
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

final _searchbarAction = FloatingSearchBarAction(
  showIfOpened: true,
  builder: (context, animation) {
    final bar = FloatingSearchAppBar.of(context)!;

    return ValueListenableBuilder<String>(
      valueListenable: bar.queryNotifer,
      builder: (context, query, _) {
        final isEmpty = query.isEmpty;

        return SearchToClear(
          isEmpty: isEmpty,
          size: 28,
          color: bar.style.iconColor,
          duration: kThemeChangeDuration * 0.5,
          onTap: () {
            if (!isEmpty) {
              bar.close();
            } else {
              bar.isOpen = !bar.isOpen || (!bar.hasFocus && bar.isAlwaysOpened);
            }
          },
        );
      },
    );
  },
);
