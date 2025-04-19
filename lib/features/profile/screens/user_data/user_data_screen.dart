import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/features/profile/services/user_actions_service.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

const _animation = 'assets/animations/love.json';

/// {@template user_data_screen.class}
/// UserDataScreen.
/// {@endtemplate}
@RoutePage()
class UserDataScreen extends StatelessWidget {
  /// {@macro user_data_screen.class}
  const UserDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserDataScreen'),
        leading: BackButton(
          onPressed: () {
            context.read<UserActionService>().setAction(UserActionType.onMain);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Персональные данные'),
            SizedBox(height: 36),
            Lottie.asset(_animation),
          ],
        ),
      ),
    );
  }
}
