import 'package:auto_route_example/navigation/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/// {@template my_app.class}
/// MyApp.
/// {@endtemplate}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _rootRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _rootRouter.config(),
    );
  }
}
