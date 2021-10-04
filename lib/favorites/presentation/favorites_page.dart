import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/presentation/card_scaffold.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  // TODO implement
  @override
  Widget build(BuildContext context) {
    return const CardScaffold(
      headerColor: Colors.amber,
      headerHeight: 65,
      headerChild: HeaderText("Preferiti"),
      bodyColor: Colors.white,
      bodyChild: Center(
        child: Text("Preferiti!"),
      ),
    );
  }
}
