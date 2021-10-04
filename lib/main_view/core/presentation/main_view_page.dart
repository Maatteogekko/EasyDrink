import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/core/presentation/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainViewPage extends StatelessWidget {
  const MainViewPage({Key? key}) : super(key: key);

  static const Map<int, Color> _colors = {
    0: Colors.blue,
    1: Colors.amber,
    2: Colors.purple,
  };

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
            onTap: (index) {
              tabsRouter.setActiveIndex(index);

              SystemChrome.setSystemUIOverlayStyle(
                SystemUiOverlayStyle(
                  statusBarColor: _colors[index]?.withOpacity(0.8),
                ),
              );
            },
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text("Home"),
                activeIcon: const Icon(Icons.home),
                selectedColor: Colors.blue,
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
