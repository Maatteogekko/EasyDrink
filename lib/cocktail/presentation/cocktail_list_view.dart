import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/application/cocktails_notifier.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/core/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cocktail_card.dart';

class CocktailListView extends StatelessWidget {
  const CocktailListView({
    required this.cocktails,
    Key? key,
  }) : super(key: key);

  final List<Cocktail> cocktails;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.start,
          children: cocktails
              .map((e) => CocktailCard(
                    cocktail: e,
                    // TODO add navigation(based on id) to detail page
                    onTap: () {
                      AutoRouter.of(context).push(CocktailDetailRoute(
                        cocktailId: e.id,
                        cocktail: e,
                      ));
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
