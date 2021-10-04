import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage({
    @PathParam() required this.cocktailId,
    Key? key,
  }) : super(key: key);

  final String cocktailId;

  @override
  Widget build(BuildContext context) {
    // TODO implement
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Pagina di dettaglio per cocktail n. $cocktailId"),
      ),
    );
  }
}
