import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/features/main/screens/catalog/color_catalog_screen.dart';
import 'package:auto_route_example/features/main/screens/detail_color/detail_color_screen.dart';
import 'package:auto_route_example/features/main/screens/main_flow.dart';
import 'package:auto_route_example/features/profile/screens/login/login_screen.dart';
import 'package:auto_route_example/features/profile/screens/profile_flow.dart';
import 'package:auto_route_example/features/profile/screens/profile_main/profile_main_screen.dart';
import 'package:auto_route_example/features/profile/screens/user_data/user_data_screen.dart';
import 'package:auto_route_example/features/splash/splash_screen.dart';
import 'package:auto_route_example/features/tabs_wrapper/tabs_wrapper_screen.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Flow|Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    /// Экран инициализации.
    AutoRoute(page: SplashRoute.page, path: '/splash', initial: true),
    _tabsNavigator,
  ];
}

/// Навигатор для таббара.
final _tabsNavigator = AutoRoute(
  page: TabsWrapperRoute.page,
  path: '/tabs-wrapper',
  children: [_mainNavigator, _profileNavigator],
);

/// Навигация по фиче Главная.
final _mainNavigator = AutoRoute(
  page: MainRoute.page,
  path: 'main-flow',
  children: [
    AutoRoute(page: ColorCatalogRoute.page, path: 'color-catalog'),
    AutoRoute(page: DetailColorRoute.page, path: 'detail-color'),
  ],
);

/// Навигация по фиче Профиль.
final _profileNavigator = AutoRoute(
  page: ProfileRoute.page,
  path: 'profile-flow',
  children: [
    CustomRoute(
      page: ProfileMainRoute.page,
      path: 'profile-main',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: LoginRoute.page,
      path: 'login',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(page: UserDataRoute.page, path: 'user-data'),
  ],
);
