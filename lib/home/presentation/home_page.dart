import 'package:easy_drink/core/presentation/widgets/expandable_section.dart';
import 'package:easy_drink/main_view/presentation/card_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // TODO implement
  @override
  Widget build(BuildContext context) {
    return CardScaffold(
      headerColor: Colors.blue,
      headerHeight: 50,
      headerChild: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(child: Text("Home")),
          Spacer(),
          ExpandableSection(
            axis: Axis.horizontal,
            // FIXME this needs to be preserved
            expanded: true,
            child: Center(
              child: Row(
                children: const [
                  Text("this is the searchbar"),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
        ],
      ),
      bodyColor: Colors.white,
      bodyChild: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
