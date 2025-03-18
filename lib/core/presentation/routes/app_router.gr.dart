// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CocktailDetailRoute.name: (routeData) {
      final args = routeData.argsAs<CocktailDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CocktailDetailPage(
          cocktail: args.cocktail,
          color: args.color,
          key: args.key,
        ),
      );
    },
    FavoritesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoritesPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MainViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainViewPage(),
      );
    },
    ScanQrCodeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScanQrCodePage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [CocktailDetailPage]
class CocktailDetailRoute extends PageRouteInfo<CocktailDetailRouteArgs> {
  CocktailDetailRoute({
    required Cocktail cocktail,
    required Color color,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CocktailDetailRoute.name,
          args: CocktailDetailRouteArgs(
            cocktail: cocktail,
            color: color,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CocktailDetailRoute';

  static const PageInfo<CocktailDetailRouteArgs> page =
      PageInfo<CocktailDetailRouteArgs>(name);
}

class CocktailDetailRouteArgs {
  const CocktailDetailRouteArgs({
    required this.cocktail,
    required this.color,
    this.key,
  });

  final Cocktail cocktail;

  final Color color;

  final Key? key;

  @override
  String toString() {
    return 'CocktailDetailRouteArgs{cocktail: $cocktail, color: $color, key: $key}';
  }
}

/// generated route for
/// [FavoritesPage]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
      : super(
          FavoritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoritesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainViewPage]
class MainViewRoute extends PageRouteInfo<void> {
  const MainViewRoute({List<PageRouteInfo>? children})
      : super(
          MainViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScanQrCodePage]
class ScanQrCodeRoute extends PageRouteInfo<void> {
  const ScanQrCodeRoute({List<PageRouteInfo>? children})
      : super(
          ScanQrCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScanQrCodeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
