import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/features/profile/services/auth_service.dart';
import 'package:auto_route_example/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

const _animation = 'assets/animations/login.json';


/// {@template login_screen.class}
/// LoginScreen.
/// {@endtemplate}
@RoutePage()
class LoginScreen extends StatefulWidget {
  /// {@macro login_screen.class}
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Войти в аккаунт чтобы иметь доступ\nко всем функциям приложения',
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 36),
              ElevatedButton(
                onPressed: () {
                  context.read<AuthService>().login();
                },
                child: Text('Войти'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  context.router.push(RegistrationRoute());
                },
                child: Text('Зарегистрироваться'),
              ),
              SizedBox(height: 36),
              Center(child: Lottie.asset(_animation))
            ],
          ),
        ),
      ),
    );
  }
}
