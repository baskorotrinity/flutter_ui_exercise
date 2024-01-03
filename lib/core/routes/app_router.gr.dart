// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:trinity_lecture_app/presentation/pages/dummy_main_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/dummy_page.dart' as _i2;
import 'package:trinity_lecture_app/presentation/pages/main_list_page.dart'
    as _i3;
import 'package:trinity_lecture_app/presentation/pages/splash_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DummyMainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DummyMainPage(),
      );
    },
    DummyRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DummyPage(),
      );
    },
    MainListRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainListPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DummyMainPage]
class DummyMainRoute extends _i5.PageRouteInfo<void> {
  const DummyMainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DummyMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyMainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DummyPage]
class DummyRoute extends _i5.PageRouteInfo<void> {
  const DummyRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DummyRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainListPage]
class MainListRoute extends _i5.PageRouteInfo<void> {
  const MainListRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainListRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainListRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
