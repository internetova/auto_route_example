import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/features/main/screens/catalog/color_catalog_screen.dart';
import 'package:auto_route_example/features/main/screens/detail_color/detail_color_screen.dart';
import 'package:auto_route_example/features/main/screens/main_flow.dart';
import 'package:auto_route_example/features/profile/screens/login/login_screen.dart';
import 'package:auto_route_example/features/profile/screens/profile_flow.dart';
import 'package:auto_route_example/features/profile/screens/profile_main/profile_main_screen.dart';
import 'package:auto_route_example/features/profile/screens/user_data/user_data_screen.dart';
import 'package:auto_route_example/features/registration/screens/enter_otp/enter_otp_screen.dart';
import 'package:auto_route_example/features/registration/screens/enter_phone/enter_phone_screen.dart';
import 'package:auto_route_example/features/registration/screens/registration_flow.dart';
import 'package:auto_route_example/features/splash/splash_screen.dart';
import 'package:auto_route_example/features/tabs_wrapper/tabs_wrapper_screen.dart';
import 'package:auto_route_example/uikit/bottom_sheet/modal_bottom_sheet_builder.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Flow|Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    _tabsNavigator,
    _registrationNavigator,
  ];
}

/// Навигатор для таббара.
final _tabsNavigator = AutoRoute(
  page: TabsWrapperRoute.page,
  children: [_mainNavigator, _profileNavigator],
);

/// Навигация по фиче Главная.
final _mainNavigator = AutoRoute(
  page: MainRoute.page,
  children: [
    AutoRoute(page: ColorCatalogRoute.page, initial: true),
    AutoRoute(page: DetailColorRoute.page),
  ],
);

/// Навигация по фиче Профиль.
final _profileNavigator = AutoRoute(
  page: ProfileRoute.page,
  children: [
    CustomRoute(
      page: ProfileMainRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: LoginRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    AutoRoute(page: UserDataRoute.page),
  ],
);

/// Навигация по фиче Регистрация.
final _registrationNavigator = CustomRoute(
  page: RegistrationRoute.page,
  customRouteBuilder: modalBottomSheetBuilder,
  children: [
    CustomRoute(
      page: EnterPhoneRoute.page,
      initial: true,
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
    CustomRoute(
      page: EnterOtpRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      duration: Duration(milliseconds: 150),
      reverseDuration: Duration(milliseconds: 150),
    ),
  ],
);
