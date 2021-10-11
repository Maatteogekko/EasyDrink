import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/presentation/cocktail_detail_page.dart';
import 'package:easy_drink/main_view/core/presentation/main_view_page.dart';
import 'package:easy_drink/main_view/favorites/presentation/favorites_page.dart';
import 'package:easy_drink/main_view/home/presentation/home_page.dart';
import 'package:easy_drink/main_view/settings/presentation/settings_page.dart';
import 'package:easy_drink/qr_code/presentation/scan_qr_code_page.dart';
import 'package:easy_drink/splash/presentation/splash_page.dart';

@AdaptiveAutoRouter(
  routes: [
    AdaptiveRoute(
      page: SplashPage,
      initial: true,
    ),
    AdaptiveRoute(
      page: MainViewPage,
      children: [
        AdaptiveRoute(
          page: EmptyRouterPage,
          name: 'HomeRouter',
          path: 'home',
          children: [
            AdaptiveRoute(
              page: HomePage,
              path: '',
            ),
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
            ),
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
    AdaptiveRoute(
      page: CocktailDetailPage,
      path: '/detail',
    ),
    AdaptiveRoute(
      page: ScanQrCodePage,
      path: '/scan',
    ),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
