import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.controller,
    required this.title,
    required this.body,
    required this.onSubmitted,
    this.actions,
  }) : super(key: key);

  final FloatingSearchBarController controller;
  final Widget title;
  final Widget body;
  final void Function(String)? onSubmitted;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return FloatingSearchAppBar(
      onSubmitted: onSubmitted,
      controller: controller,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Theme.of(context).primaryColor,
      colorOnScroll: Theme.of(context).primaryColor,
      iconColor: Colors.white,
      hintStyle: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.white.withOpacity(0.6),
          ),
      titleStyle: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white),
      automaticallyImplyBackButton: false,
      liftOnScrollElevation: 0,
      elevation: 0,
      title: FittedBox(child: title),
      actions: actions,
      body: body,
    );
  }
}
