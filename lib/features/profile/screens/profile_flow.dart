import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/features/profile/services/auth_service.dart';
import 'package:auto_route_example/features/profile/services/user_actions_service.dart';
import 'package:auto_route_example/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// {@template profile_flow.class}
/// Точка входа в Профиль.
/// {@endtemplate}
@RoutePage()
class ProfileFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro profile_flow.class}
  const ProfileFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthService>(create: (_) => AuthService()),
        ChangeNotifierProvider<UserActionService>(
          create: (_) => UserActionService(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final authState = context.watch<AuthService>();
    final userActionsState = context.watch<UserActionService>();

    return AutoRouter.declarative(
      routes: (_) {
        final routes = <PageRouteInfo>[];

        if (authState.isAuthenticated) {
          switch (userActionsState.currentAction) {
            case UserActionType.onMain:
              routes.add(ProfileMainRoute());
            case UserActionType.onUserData:
              routes.add(UserDataRoute());
          }
        } else {
          routes.add(LoginRoute());
        }

        return routes;
      },
    );
  }
}
