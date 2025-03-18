import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/cocktail/presentation/cocktail_detail_page.dart';
import 'package:easy_drink/main_view/core/presentation/main_view_page.dart';
import 'package:easy_drink/main_view/favorites/presentation/favorites_page.dart';
import 'package:easy_drink/main_view/home/presentation/home_page.dart';
import 'package:easy_drink/main_view/settings/presentation/settings_page.dart';
import 'package:easy_drink/qr_code/presentation/scan_qr_code_page.dart';
import 'package:easy_drink/splash/presentation/splash_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AdaptiveRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AdaptiveRoute(
          page: MainViewRoute.page,
          children: [
            AdaptiveRoute(
              page: HomeRoute.page,
              path: 'home',
            ),
            AdaptiveRoute(
              page: FavoritesRoute.page,
              path: 'favorites',
            ),
            AdaptiveRoute(
              page: SettingsRoute.page,
              path: 'settings',
            )
          ],
        ),
        AdaptiveRoute(
          page: CocktailDetailRoute.page,
          path: '/detail',
        ),
        AdaptiveRoute(
          page: ScanQrCodeRoute.page,
          path: '/scan',
        ),
      ];
}
