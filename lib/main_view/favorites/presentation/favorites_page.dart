import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/application/favorite_cocktails_notifier.dart';
import 'package:easy_drink/cocktail/presentation/cocktail_list_view.dart';
import 'package:easy_drink/core/presentation/routes/app_router.dart';
import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/core/presentation/widgets/card_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardScaffold(
      headerColor: Colors.amber,
      headerHeight: 65,
      headerChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const HeaderText("Preferiti"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                splashRadius: 24,
                onPressed: () => AutoRouter.of(context).push(
                  const ScanQrCodeRoute(),
                ),
                icon: const Icon(
                  Icons.qr_code_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
      bodyColor: Colors.white,
      bodyChild: Consumer<FavoriteCocktailsNotifier>(
        builder: (context, notifier, child) => CocktailListView(
          detailPageColor: Colors.amber,
          cocktails: notifier.cocktails,
        ),
      ),
    );
  }
}
