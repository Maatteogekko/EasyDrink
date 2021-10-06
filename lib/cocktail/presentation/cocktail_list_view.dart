import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/application/cocktails_notifier.dart';
import 'package:easy_drink/core/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import 'cocktail_card.dart';

class CocktailListView extends StatefulWidget {
  const CocktailListView({
    required this.detailPageColor,
    this.isFavorites = false,
    Key? key,
  }) : super(key: key);

  final Color detailPageColor;

  // HACK a parametric (favorite or not) CocktailNotifier would be much better
  final bool isFavorites;

  @override
  State<CocktailListView> createState() => _CocktailListViewState();
}

class _CocktailListViewState extends State<CocktailListView> {
  @override
  void initState() {
    super.initState();
    if (widget.isFavorites) {
      Future.microtask(
        () => context.read<CocktailsNotifier>().getFavoritesFromDatabase(),
      );
    } else {
      // TODO load random cocktails
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CocktailsNotifier>(
      builder: (context, notifier, child) {
        // TODO check if the ternary expression is working
        if ((widget.isFavorites ? notifier.isLoadingFavorites : notifier.isLoading)) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        }
        // TODO add exception handling
        else {
          return Center(
            child: StaggeredGridView.countBuilder(
              padding: const EdgeInsets.all(8),
              crossAxisCount: 2,
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              itemCount: (widget.isFavorites
                  ? notifier.favoriteCocktails.length
                  : notifier.cocktails.length),
              itemBuilder: (context, index) =>
                  (widget.isFavorites ? notifier.favoriteCocktails : notifier.cocktails)
                      .map(
                        (e) => CocktailCard(
                          cocktail: e,
                          onTap: () {
                            AutoRouter.of(context).push(
                              CocktailDetailRoute(
                                cocktail: e,
                                color: widget.detailPageColor,
                              ),
                            );
                          },
                        ),
                      )
                      .toList()[index],
            ),
          );
        }
      },
    );
  }
}
