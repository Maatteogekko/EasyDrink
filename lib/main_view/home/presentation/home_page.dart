import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/core/presentation/card_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context.read<CocktailsNotifier>().test();
    return const CardScaffold(
      headerColor: Colors.blue,
      headerHeight: 65,
      headerChild: HeaderText("Home"),
      bodyColor: Colors.white,
      bodyChild: Center(
        child: Text("This is home!"),
      ),
    );
  }
}
