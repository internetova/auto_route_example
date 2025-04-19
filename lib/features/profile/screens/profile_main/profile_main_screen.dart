import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/features/profile/services/auth_service.dart';
import 'package:auto_route_example/features/profile/services/user_actions_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// {@template profile_main_screen.class}
/// ProfileMainScreen.
/// {@endtemplate}
@RoutePage()
class ProfileMainScreen extends StatefulWidget {
  /// {@macro profile_main_screen.class}
  const ProfileMainScreen({super.key});

  @override
  State<ProfileMainScreen> createState() => _ProfileMainScreenState();
}

class _ProfileMainScreenState extends State<ProfileMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProfileMainScreen'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Персональные данные'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  context.read<UserActionService>().setAction(
                    UserActionType.onUserData,
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.palette),
                title: const Text('Настройки темы'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.payment),
                title: const Text('Платежные данные'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
              SizedBox(height: 36),
              ElevatedButton(
                onPressed: () {
                  context.read<AuthService>().logout();
                },
                child: Text('Выйти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
