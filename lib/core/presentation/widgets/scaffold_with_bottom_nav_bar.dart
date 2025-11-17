import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:go_router/go_router.dart';

final GlobalKey<ScaffoldState> globalAppScaffoldKey = GlobalKey<ScaffoldState>();

class ScaffoldWithBottomNavBar extends StatelessWidget {
  /// Constructs an [ScaffoldWithBottomNavBar].
  const ScaffoldWithBottomNavBar({super.key, required this.navigationShell});

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    return Scaffold(
      key: globalAppScaffoldKey,
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(label: 'Home', icon: Icon(Icons.home_outlined), selectedIcon: Icon(Icons.home)),
          NavigationDestination(label: 'Profile', icon: Icon(Icons.verified_user_outlined), selectedIcon: Icon(Icons.verified_user)),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
