import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:flutter/material.dart';

import 'cocktail_card.dart';

class CocktailListView extends StatelessWidget {
  const CocktailListView({
    required this.cocktails,
    Key? key,
  }) : super(key: key);

  final List<Cocktail> cocktails;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        children: cocktails
            .map((e) => CocktailCard(
                  cocktail: e,
                  // TODO add navigation(based on id) to detail page
                  onTap: () {},
                ))
            .toList(),
      ),
    );
  }
}
