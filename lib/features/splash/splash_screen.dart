import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

const _animation = 'assets/animations/cat-loader.json';

/// {@template splash_screen.class}
/// SplashScreen.
/// {@endtemplate}
@RoutePage()
class SplashScreen extends StatefulWidget {
  /// {@macro splash_screen.class}
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      context.router.replaceAll([ColorCatalogRoute()]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Lottie.asset(_animation)));
  }
}
