// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:easy_drink/cocktail/domain/cocktail.dart' as _i10;
import 'package:easy_drink/cocktail/presentation/cocktail_detail_page.dart'
    as _i3;
import 'package:easy_drink/main_view/core/presentation/main_view_page.dart'
    as _i2;
import 'package:easy_drink/main_view/favorites/presentation/favorites_page.dart'
    as _i7;
import 'package:easy_drink/main_view/home/presentation/home_page.dart' as _i6;
import 'package:easy_drink/main_view/settings/presentation/settings_page.dart'
    as _i8;
import 'package:easy_drink/qr_code/presentation/scan_qr_code_page.dart' as _i4;
import 'package:easy_drink/splash/presentation/splash_page.dart' as _i1;
import 'package:flutter/material.dart' as _i9;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    MainViewRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.MainViewPage());
    },
    CocktailDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CocktailDetailRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.CocktailDetailPage(
              cocktail: args.cocktail, color: args.color, key: args.key));
    },
    ScanQrCodeRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.ScanQrCodePage());
    },
    HomeRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    FavoritesRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    },
    FavoritesRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.FavoritesPage());
    },
    SettingsRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.SettingsPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashRoute.name, path: '/'),
        _i5.RouteConfig(MainViewRoute.name, path: '/main-view-page', children: [
          _i5.RouteConfig(HomeRouter.name,
              path: 'home',
              children: [_i5.RouteConfig(HomeRoute.name, path: '')]),
          _i5.RouteConfig(FavoritesRouter.name,
              path: 'favorites',
              children: [_i5.RouteConfig(FavoritesRoute.name, path: '')]),
          _i5.RouteConfig(SettingsRouter.name,
              path: 'settings',
              children: [_i5.RouteConfig(SettingsRoute.name, path: '')])
        ]),
        _i5.RouteConfig(CocktailDetailRoute.name, path: '/detail'),
        _i5.RouteConfig(ScanQrCodeRoute.name, path: '/scan')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.MainViewPage]
class MainViewRoute extends _i5.PageRouteInfo<void> {
  const MainViewRoute({List<_i5.PageRouteInfo>? children})
      : super(name, path: '/main-view-page', initialChildren: children);

  static const String name = 'MainViewRoute';
}

/// generated route for [_i3.CocktailDetailPage]
class CocktailDetailRoute extends _i5.PageRouteInfo<CocktailDetailRouteArgs> {
  CocktailDetailRoute(
      {required _i10.Cocktail cocktail, required _i9.Color color, _i9.Key? key})
      : super(name,
            path: '/detail',
            args: CocktailDetailRouteArgs(
                cocktail: cocktail, color: color, key: key));

  static const String name = 'CocktailDetailRoute';
}

class CocktailDetailRouteArgs {
  const CocktailDetailRouteArgs(
      {required this.cocktail, required this.color, this.key});

  final _i10.Cocktail cocktail;

  final _i9.Color color;

  final _i9.Key? key;
}

/// generated route for [_i4.ScanQrCodePage]
class ScanQrCodeRoute extends _i5.PageRouteInfo<void> {
  const ScanQrCodeRoute() : super(name, path: '/scan');

  static const String name = 'ScanQrCodeRoute';
}

/// generated route for [_i5.EmptyRouterPage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i5.EmptyRouterPage]
class FavoritesRouter extends _i5.PageRouteInfo<void> {
  const FavoritesRouter({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'favorites', initialChildren: children);

  static const String name = 'FavoritesRouter';
}

/// generated route for [_i5.EmptyRouterPage]
class SettingsRouter extends _i5.PageRouteInfo<void> {
  const SettingsRouter({List<_i5.PageRouteInfo>? children})
      : super(name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for [_i6.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for [_i7.FavoritesPage]
class FavoritesRoute extends _i5.PageRouteInfo<void> {
  const FavoritesRoute() : super(name, path: '');

  static const String name = 'FavoritesRoute';
}

/// generated route for [_i8.SettingsPage]
class SettingsRoute extends _i5.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}
