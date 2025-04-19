import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// {@template main_flow.class}
/// Точка входа на главный экран.
/// {@endtemplate}
@RoutePage()
class MainFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro main_flow.class}
  const MainFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    /// Обычно тут инициализируются необходимые зависимости для фичи
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
