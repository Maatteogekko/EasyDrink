// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:easy_drink/main_view/core/presentation/main_view_page.dart'
    as _i1;
import 'package:easy_drink/main_view/favorites/presentation/favorites_page.dart'
    as _i4;
import 'package:easy_drink/main_view/home/presentation/home_page.dart' as _i3;
import 'package:easy_drink/main_view/settings/presentation/settings_page.dart'
    as _i5;
import 'package:flutter/material.dart' as _i6;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    MainViewRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.MainViewPage());
    },
    HomeRouter.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    FavoritesRouter.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    SettingsRouter.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    FavoritesRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.FavoritesPage());
    },
    SettingsRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.SettingsPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(MainViewRoute.name, path: '/', children: [
          _i2.RouteConfig(HomeRouter.name,
              path: 'home',
              children: [_i2.RouteConfig(HomeRoute.name, path: '')]),
          _i2.RouteConfig(FavoritesRouter.name,
              path: 'favorites',
              children: [_i2.RouteConfig(FavoritesRoute.name, path: '')]),
          _i2.RouteConfig(SettingsRouter.name,
              path: 'settings',
              children: [_i2.RouteConfig(SettingsRoute.name, path: '')])
        ])
      ];
}

/// generated route for [_i1.MainViewPage]
class MainViewRoute extends _i2.PageRouteInfo<void> {
  const MainViewRoute({List<_i2.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'MainViewRoute';
}

/// generated route for [_i2.EmptyRouterPage]
class HomeRouter extends _i2.PageRouteInfo<void> {
  const HomeRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class FavoritesRouter extends _i2.PageRouteInfo<void> {
  const FavoritesRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'favorites', initialChildren: children);

  static const String name = 'FavoritesRouter';
}

/// generated route for [_i2.EmptyRouterPage]
class SettingsRouter extends _i2.PageRouteInfo<void> {
  const SettingsRouter({List<_i2.PageRouteInfo>? children})
      : super(name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for [_i3.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for [_i4.FavoritesPage]
class FavoritesRoute extends _i2.PageRouteInfo<void> {
  const FavoritesRoute() : super(name, path: '');

  static const String name = 'FavoritesRoute';
}

/// generated route for [_i5.SettingsPage]
class SettingsRoute extends _i2.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}
