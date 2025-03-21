import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/core/presentation/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'cocktail_card.dart';

class CocktailListView extends StatefulWidget {
  const CocktailListView({
    required this.detailPageColor,
    required this.cocktails,
    Key? key,
  }) : super(key: key);

  final Color detailPageColor;
  final List<Cocktail> cocktails;

  @override
  State<CocktailListView> createState() => _CocktailListViewState();
}

class _CocktailListViewState extends State<CocktailListView> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Center(
      child: StaggeredGridView.countBuilder(
        padding: const EdgeInsets.all(8),
        crossAxisCount: width < 600 ? 2 : 3,
        staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
        itemCount: (widget.cocktails.length),
        itemBuilder: (context, index) => (widget.cocktails)
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
}
