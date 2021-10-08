import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/application/favorite_cocktails_notifier.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/core/presentation/widgets/card_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage({
    required this.cocktail,
    required this.color,
    Key? key,
  }) : super(key: key);

  final Cocktail cocktail;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CardScaffold(
          headerColor: color,
          headerHeight: 65,
          headerChild: _Header(color: color, cocktail: cocktail),
          bodyColor: Colors.white,
          bodyChild: Stack(
            children: [
              // IMPROVE add loading spinner
              FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: cocktail.imageUri,
              ),
              Positioned(
                top: 280,
                right: 20,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: _FavoriteButton(cocktail: cocktail),
                ),
              ),
              Positioned.fill(
                top: 350,
                child: _Body(cocktail: cocktail),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          _DetailCard(
            title: "Istruzioni",
            child: Text(
              cocktail.instructions,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 17),
            ),
          ),
          const SizedBox(height: 20),
          _DetailCard(
            title: "Ingredienti",
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _AlignedTextColumn(
                  list: cocktail.ingredients,
                  alignment: CrossAxisAlignment.start,
                ),
                _AlignedTextColumn(
                  list: cocktail.measures,
                  alignment: CrossAxisAlignment.end,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AlignedTextColumn extends StatelessWidget {
  const _AlignedTextColumn({
    Key? key,
    this.alignment = CrossAxisAlignment.center,
    required this.list,
  }) : super(key: key);

  final List<String> list;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: list
          .map(
            (e) => Text(
              e,
              style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 17),
            ),
          )
          .toList(),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({
    Key? key,
    required this.color,
    required this.cocktail,
  }) : super(key: key);

  final Color color;
  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: color.withOpacity(0.8),
        ),
        title: FittedBox(
          child: HeaderText(cocktail.name),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        // TODO test if behaves correctly
        leading: const AutoBackButton(),
        // IconButton(
        //   splashRadius: 30,
        //   onPressed: () {
        //     AutoRouter.of(context).pop();
        //   },
        //   icon: const Icon(
        //     Icons.arrow_back,
        //   ),
        // ),
      ),
    );
  }
}

class _FavoriteButton extends StatelessWidget {
  const _FavoriteButton({
    Key? key,
    required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteCocktailsNotifier>(
      builder: (context, notifier, child) {
        final isFavorite = notifier.isFavorite(cocktail.id);
        return ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Material(
            color: Colors.transparent,
            child: IconButton(
              splashRadius: 40,
              onPressed: () => notifier.toggleFavorite(cocktail),
              icon: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                color: Colors.amber,
                size: 40,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _DetailCard extends StatelessWidget {
  const _DetailCard({
    required this.title,
    required this.child,
    Key? key,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 17),
        ),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          color: const Color(0xFFF5F4F7),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: child,
          ),
        ),
      ],
    );
  }
}
