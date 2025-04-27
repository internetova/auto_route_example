import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// {@template enter_otp_screen.class}
/// EnterOtpScreen.
/// {@endtemplate}
@RoutePage()
class EnterOtpScreen extends StatelessWidget {
  /// {@macro enter_otp_screen.class}
  const EnterOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Якобы поле для ввода otp-кода'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  AutoRouter.of(context).root.pop();
                },
                child: const Text('Продолжить'),
              ),
            ],
          ),
        ),
        Positioned(
          top: 12,
          left: 12,
          child: IconButton.filled(
            onPressed: () {
              AutoRouter.of(context).maybePop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ],
    );
  }
}
