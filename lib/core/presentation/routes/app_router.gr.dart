// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:easy_drink/cocktail/domain/cocktail.dart' as _i8;
import 'package:easy_drink/cocktail/presentation/cocktail_detail_page.dart'
    as _i2;
import 'package:easy_drink/main_view/core/presentation/main_view_page.dart'
    as _i1;
import 'package:easy_drink/main_view/favorites/presentation/favorites_page.dart'
    as _i5;
import 'package:easy_drink/main_view/home/presentation/home_page.dart' as _i4;
import 'package:easy_drink/main_view/settings/presentation/settings_page.dart'
    as _i6;
import 'package:flutter/material.dart' as _i7;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainViewRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.MainViewPage());
    },
    CocktailDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CocktailDetailRouteArgs>();
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.CocktailDetailPage(
              cocktail: args.cocktail, color: args.color, key: args.key));
    },
    HomeRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    FavoritesRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.HomePage());
    },
    FavoritesRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.FavoritesPage());
    },
    SettingsRoute.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.SettingsPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MainViewRoute.name, path: '/', children: [
          _i3.RouteConfig(HomeRouter.name,
              path: 'home',
              children: [_i3.RouteConfig(HomeRoute.name, path: '')]),
          _i3.RouteConfig(FavoritesRouter.name,
              path: 'favorites',
              children: [_i3.RouteConfig(FavoritesRoute.name, path: '')]),
          _i3.RouteConfig(SettingsRouter.name,
              path: 'settings',
              children: [_i3.RouteConfig(SettingsRoute.name, path: '')])
        ]),
        _i3.RouteConfig(CocktailDetailRoute.name, path: '/detail')
      ];
}

/// generated route for [_i1.MainViewPage]
class MainViewRoute extends _i3.PageRouteInfo<void> {
  const MainViewRoute({List<_i3.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'MainViewRoute';
}

/// generated route for [_i2.CocktailDetailPage]
class CocktailDetailRoute extends _i3.PageRouteInfo<CocktailDetailRouteArgs> {
  CocktailDetailRoute(
      {required _i8.Cocktail cocktail, required _i7.Color color, _i7.Key? key})
      : super(name,
            path: '/detail',
            args: CocktailDetailRouteArgs(
                cocktail: cocktail, color: color, key: key));

  static const String name = 'CocktailDetailRoute';
}

class CocktailDetailRouteArgs {
  const CocktailDetailRouteArgs(
      {required this.cocktail, required this.color, this.key});

  final _i8.Cocktail cocktail;

  final _i7.Color color;

  final _i7.Key? key;
}

/// generated route for [_i3.EmptyRouterPage]
class HomeRouter extends _i3.PageRouteInfo<void> {
  const HomeRouter({List<_i3.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i3.EmptyRouterPage]
class FavoritesRouter extends _i3.PageRouteInfo<void> {
  const FavoritesRouter({List<_i3.PageRouteInfo>? children})
      : super(name, path: 'favorites', initialChildren: children);

  static const String name = 'FavoritesRouter';
}

/// generated route for [_i3.EmptyRouterPage]
class SettingsRouter extends _i3.PageRouteInfo<void> {
  const SettingsRouter({List<_i3.PageRouteInfo>? children})
      : super(name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for [_i4.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for [_i5.FavoritesPage]
class FavoritesRoute extends _i3.PageRouteInfo<void> {
  const FavoritesRoute() : super(name, path: '');

  static const String name = 'FavoritesRoute';
}

/// generated route for [_i6.SettingsPage]
class SettingsRoute extends _i3.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}
