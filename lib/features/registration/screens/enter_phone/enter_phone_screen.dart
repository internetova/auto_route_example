import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/navigation/app_router.dart';
import 'package:flutter/material.dart';

/// {@template enter_phone_screen.class}
/// EnterPhoneScreen.
/// {@endtemplate}
@RoutePage()
class EnterPhoneScreen extends StatelessWidget {
  /// {@macro enter_phone_screen.class}
  const EnterPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Якобы поле для ввода номер телефона'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(EnterOtpRoute());
              },
              child: const Text('Продолжить'),
            ),
          ],
        ),
    );
  }
}
