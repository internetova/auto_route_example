import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// {@template registration_flow.class}
/// Точка входа на флоу регистрации.
/// {@endtemplate}
@RoutePage()
class RegistrationFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro registration_flow.class}
  const RegistrationFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    /// Обычно тут инициализируются необходимые зависимости для фичи
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: const AutoRouter(),
    );
  }
}
