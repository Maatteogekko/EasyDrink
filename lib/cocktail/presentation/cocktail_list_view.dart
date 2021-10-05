import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/application/cocktails_notifier.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/core/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import 'cocktail_card.dart';

class CocktailListView extends StatelessWidget {
  const CocktailListView({
    required this.detailPageColor,
    Key? key,
  }) : super(key: key);

  final Color detailPageColor;

  // IMPROVE load only when scrolled to bottom of the page. See /home/gekko/Desktop/repo_viewer/lib/github/repos/core/presentation/paginated_repos_list_view.dart

  @override
  Widget build(BuildContext context) {
    return Consumer<CocktailsNotifier>(
      builder: (context, notifier, child) {
        if (notifier.isLoading) {
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
              itemCount: notifier.cocktails.length,
              itemBuilder: (context, index) => notifier.cocktails
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
      },
    );
  }
}
