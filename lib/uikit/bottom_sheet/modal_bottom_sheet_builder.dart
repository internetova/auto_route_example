import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/uikit/bottom_sheet/default_bottom_sheet.dart';
import 'package:flutter/material.dart';

/// Билдер ModalBottomSheetRoute для CustomRoute.
/// Используется в файлах маршрутов когда надо открыть полноэкранный боттом шит
/// как кастомный роут.
Route<T> modalBottomSheetBuilder<T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page,
) {
  return ModalBottomSheetRoute(
    settings: page,
    builder: (_) => DefaultBottomSheet(child: child),
    capturedThemes: InheritedTheme.capture(
      from: context,
      to: Navigator.of(context, rootNavigator: true).context,
    ),
    isScrollControlled: true,
    useSafeArea: true,
  );
}
