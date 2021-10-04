import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/presentation/card_scaffold.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  // TODO implement

  @override
  Widget build(BuildContext context) {
    return const CardScaffold(
      headerColor: Colors.purple,
      headerHeight: 65,
      headerChild: HeaderText("Impostazioni"),
      bodyColor: Colors.white,
      bodyChild: Center(
        child: Text("impostazioni!"),
      ),
    );
  }
}
