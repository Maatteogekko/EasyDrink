import 'package:easy_drink/cocktail/application/cocktails_notifier.dart';
import 'package:easy_drink/cocktail/domain/alcoholic.dart';
import 'package:easy_drink/cocktail/domain/category.dart';
import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/core/presentation/widgets/card_scaffold.dart';
import 'package:easy_drink/cocktail/presentation/cocktail_list_view.dart';
import 'package:easy_drink/main_view/home/presentation/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

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
            context.read<CocktailsNotifier>().search(query);
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
            bodyChild: Consumer2<CocktailsNotifier, CocktailsState>(
              builder: (context, notifier, state, child) {
                return state.map(
                  initial: (_) => const SizedBox.shrink(),
                  loading: (_) => const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                  data: (data) {
                    if (_query == null) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _ListViewHeader(
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
                                cocktails: data.cocktails.toList()
                                  ..sort(
                                    (a, b) => a.name.compareTo(b.name),
                                  ),
                              ),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _ListViewHeader(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                _FilterSelector(
                                  color: Theme.of(context).primaryColor,
                                  buttonText: "Ingredienti",
                                  title: "Seleziona ingredienti",
                                  searchable: true,
                                  initialChildSize: 0.5,
                                  items: context
                                      .read<CocktailsNotifier>()
                                      .ingredients
                                      .map(
                                        (e) => MultiSelectItem(e, e),
                                      )
                                      .toList(),
                                  initialValue: notifier.selectedIngredients,
                                  onConfirm: notifier.updateIngredientsFilter,
                                  maxChildSize: 0.8,
                                ),
                                _FilterSelector(
                                  color: Colors.amber,
                                  buttonText: "Categorie",
                                  title: "Seleziona categorie",
                                  searchable: false,
                                  initialChildSize: 0.5,
                                  items: Category.values
                                      .map(
                                        (e) => MultiSelectItem(e, e.value),
                                      )
                                      .toList(),
                                  initialValue: notifier.selectedCategories,
                                  onConfirm: notifier.updateCategoriesFilter,
                                  maxChildSize: 0.8,
                                ),
                                _FilterSelector(
                                  color: Colors.purple,
                                  buttonText: "Tipi",
                                  title: "Seleziona tipi",
                                  searchable: false,
                                  initialChildSize: 0.4,
                                  items: Alcoholic.values
                                      .map(
                                        (e) => MultiSelectItem(e, e.value),
                                      )
                                      .toList(),
                                  initialValue: notifier.selectedAlcoholics,
                                  onConfirm: notifier.updateAlcoholicFilter,
                                  maxChildSize: 0.4,
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: RefreshIndicator(
                              onRefresh: () => notifier.search(_query ?? ''),
                              child: CocktailListView(
                                detailPageColor: Theme.of(context).primaryColor,
                                cocktails: state.cocktails.toList()
                                  ..sort(
                                    (a, b) => a.name.compareTo(b.name),
                                  ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                  },
                  failure: (failure) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          failure.message,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: failure.failedAction,
                          child: const Text("Riprova"),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _ListViewHeader extends StatelessWidget {
  const _ListViewHeader({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 18),
      alignment: Alignment.center,
      child: child,
    );
  }
}

class _FilterSelector<V> extends StatelessWidget {
  const _FilterSelector({
    Key? key,
    this.color,
    required this.title,
    required this.buttonText,
    required this.searchable,
    required this.initialChildSize,
    required this.maxChildSize,
    required this.items,
    required this.onConfirm,
    required this.initialValue,
  }) : super(key: key);

  final Color? color;
  final String buttonText;
  final String title;
  final bool searchable;
  final double initialChildSize;
  final double maxChildSize;
  final List<MultiSelectItem<V>> items;
  final void Function(List<V>) onConfirm;
  final List<V> initialValue;

  void _showMultiSelect(BuildContext context, Widget Function(BuildContext) builder) async {
    await showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      context: context,
      builder: builder,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(color),
      ),
      onPressed: () => _showMultiSelect(
        context,
        (ctx) {
          return MultiSelectBottomSheet(
            checkColor: color,
            selectedColor: color?.withOpacity(0.5),
            title: Text(title),
            cancelText: Text(
              "Annulla",
              style: Theme.of(context).textTheme.button?.copyWith(color: Colors.redAccent),
            ),
            searchable: searchable,
            initialChildSize: initialChildSize,
            items: items,
            initialValue: initialValue,
            onConfirm: onConfirm,
            maxChildSize: maxChildSize,
          );
        },
      ),
      child: Text(buttonText),
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
