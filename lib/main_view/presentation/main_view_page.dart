import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/core/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainViewPage extends StatelessWidget {
  const MainViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AutoTabsScaffold(
        routes: const [
          HomeRouter(),
          FavoritesRouter(),
          SettingsRouter(),
        ],
        builder: (context, child, animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        bottomNavigationBuilder: (context, tabsRouter) {
          return SalomonBottomBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text("Home"),
                activeIcon: const Icon(Icons.home),
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.star_border),
                title: const Text("Preferiti"),
                activeIcon: const Icon(Icons.star),
                selectedColor: Colors.amber,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.settings_outlined),
                title: const Text("Impostazioni"),
                activeIcon: const Icon(Icons.settings),
                selectedColor: Colors.purple,
              )
            ],
          );
        },
      ),
    );
  }
}
