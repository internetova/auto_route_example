// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ColorCatalogScreen]
class ColorCatalogRoute extends PageRouteInfo<void> {
  const ColorCatalogRoute({List<PageRouteInfo>? children})
    : super(ColorCatalogRoute.name, initialChildren: children);

  static const String name = 'ColorCatalogRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ColorCatalogScreen();
    },
  );
}

/// generated route for
/// [DetailColorScreen]
class DetailColorRoute extends PageRouteInfo<DetailColorRouteArgs> {
  DetailColorRoute({
    required Color color,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         DetailColorRoute.name,
         args: DetailColorRouteArgs(color: color, key: key),
         initialChildren: children,
       );

  static const String name = 'DetailColorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailColorRouteArgs>();
      return DetailColorScreen(color: args.color, key: args.key);
    },
  );
}

class DetailColorRouteArgs {
  const DetailColorRouteArgs({required this.color, this.key});

  final Color color;

  final Key? key;

  @override
  String toString() {
    return 'DetailColorRouteArgs{color: $color, key: $key}';
  }
}

/// generated route for
/// [EnterOtpScreen]
class EnterOtpRoute extends PageRouteInfo<void> {
  const EnterOtpRoute({List<PageRouteInfo>? children})
    : super(EnterOtpRoute.name, initialChildren: children);

  static const String name = 'EnterOtpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EnterOtpScreen();
    },
  );
}

/// generated route for
/// [EnterPhoneScreen]
class EnterPhoneRoute extends PageRouteInfo<void> {
  const EnterPhoneRoute({List<PageRouteInfo>? children})
    : super(EnterPhoneRoute.name, initialChildren: children);

  static const String name = 'EnterPhoneRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EnterPhoneScreen();
    },
  );
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [MainFlow]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const MainFlow());
    },
  );
}

/// generated route for
/// [ProfileFlow]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ProfileFlow());
    },
  );
}

/// generated route for
/// [ProfileMainScreen]
class ProfileMainRoute extends PageRouteInfo<void> {
  const ProfileMainRoute({List<PageRouteInfo>? children})
    : super(ProfileMainRoute.name, initialChildren: children);

  static const String name = 'ProfileMainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileMainScreen();
    },
  );
}

/// generated route for
/// [RegistrationFlow]
class RegistrationRoute extends PageRouteInfo<void> {
  const RegistrationRoute({List<PageRouteInfo>? children})
    : super(RegistrationRoute.name, initialChildren: children);

  static const String name = 'RegistrationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const RegistrationFlow());
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}

/// generated route for
/// [TabsWrapperScreen]
class TabsWrapperRoute extends PageRouteInfo<void> {
  const TabsWrapperRoute({List<PageRouteInfo>? children})
    : super(TabsWrapperRoute.name, initialChildren: children);

  static const String name = 'TabsWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TabsWrapperScreen();
    },
  );
}

/// generated route for
/// [UserDataScreen]
class UserDataRoute extends PageRouteInfo<void> {
  const UserDataRoute({List<PageRouteInfo>? children})
    : super(UserDataRoute.name, initialChildren: children);

  static const String name = 'UserDataRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UserDataScreen();
    },
  );
}
