import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/core/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'cocktail_card.dart';

class CocktailListView extends StatelessWidget {
  const CocktailListView({
    required this.detailPageColor,
    required this.cocktails,
    Key? key,
  }) : super(key: key);

  final Color detailPageColor;
  final List<Cocktail> cocktails;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StaggeredGridView.countBuilder(
        padding: const EdgeInsets.all(8),
        crossAxisCount: 2,
        staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
        itemCount: (cocktails.length),
        itemBuilder: (context, index) => (cocktails)
            .map(
              (e) => CocktailCard(
                cocktail: e,
                onTap: () {
                  AutoRouter.of(context).push(
                    CocktailDetailRoute(
                      cocktail: e,
                      color: detailPageColor,
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
