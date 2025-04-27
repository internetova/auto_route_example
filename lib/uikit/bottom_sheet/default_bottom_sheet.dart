import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// {@template default_bottom_sheet.class}
/// Стандартный боттом шит.
/// {@endtemplate}
class DefaultBottomSheet extends StatelessWidget {
  final Widget child;

  /// {@macro default_bottom_sheet.class}
  const DefaultBottomSheet({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      child: Scaffold(
        body: Stack(
          children: [
            child,
            Positioned(
              top: 12,
              right: 12,
              child: IconButton.filled(
                onPressed: () {
                  AutoRouter.of(context).root.pop();
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
