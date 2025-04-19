import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/navigation/app_router.dart';
import 'package:flutter/material.dart';

/// {@template color_catalog_screen.class}
/// ColorCatalogScreen.
/// {@endtemplate}
@RoutePage()
class ColorCatalogScreen extends StatelessWidget {
  /// {@macro color_catalog_screen.class}
  const ColorCatalogScreen({super.key});

  List<Widget> _generateColorfulListTiles(BuildContext context) {
    final random = Random();

    return List.generate(20, (index) {
      // Генерируем случайный цвет
      final randomColor = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );

      // Вычисляем контрастный цвет для текста
      final textColor =
          randomColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

      return ListTile(
        tileColor: randomColor,
        title: Text(
          'Цветной ListTile ${index + 1}',
          style: TextStyle(color: textColor),
        ),
        subtitle: Text(
          'Это случайный цвет',
          style: TextStyle(color: textColor.withValues(alpha: 0.5)),
        ),
        leading: Icon(Icons.color_lens, color: textColor),
        trailing: Icon(Icons.arrow_forward_ios, color: textColor),
        onTap: () {
          context.router.push(DetailColorRoute(color: randomColor));
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColorCatalogScreen'),
      ),
      body: ListView(
        children:
          _generateColorfulListTiles(context),
      ),
    );
  }
}
