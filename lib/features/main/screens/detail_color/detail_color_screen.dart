import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// {@template detail_screen.class}
/// DetailColorScreen.
/// {@endtemplate}
@RoutePage()
class DetailColorScreen extends StatelessWidget {
  /// {@macro detail_screen.class}
  const DetailColorScreen({required this.color, super.key});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('DetailColorScreen'),
      ),
    );
  }
}
