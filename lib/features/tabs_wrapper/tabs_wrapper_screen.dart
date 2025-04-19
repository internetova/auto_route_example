import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/navigation/app_router.dart';
import 'package:flutter/material.dart';

/// {@template tabs_wrapper_screen.class}
/// TabsWrapperScreen.
/// {@endtemplate}
@RoutePage()
class TabsWrapperScreen extends StatelessWidget {
  /// {@macro tabs_wrapper_screen.class}
  const TabsWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        MainRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
          ],
        );
      },
    );
  }
}
