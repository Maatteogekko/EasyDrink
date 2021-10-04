import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/main_view/core/presentation/main_view_page.dart';
import 'package:easy_drink/main_view/favorites/presentation/favorites_page.dart';
import 'package:easy_drink/main_view/home/presentation/home_page.dart';
import 'package:easy_drink/main_view/settings/presentation/settings_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AdaptiveRoute(
      page: MainViewPage,
      initial: true,
      children: [
        AdaptiveRoute(
          page: EmptyRouterPage,
          name: 'HomeRouter',
          path: 'home',
          children: [
            AdaptiveRoute(
              page: HomePage,
              path: '',
            )
          ],
        ),
        AdaptiveRoute(
          page: EmptyRouterPage,
          path: 'favorites',
          name: 'FavoritesRouter',
          children: [
            AdaptiveRoute(
              page: FavoritesPage,
              path: '',
            )
          ],
        ),
        AdaptiveRoute(
          page: EmptyRouterPage,
          path: 'settings',
          name: 'SettingsRouter',
          children: [
            AdaptiveRoute(
              page: SettingsPage,
              path: '',
            )
          ],
        )
      ],
    ),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
