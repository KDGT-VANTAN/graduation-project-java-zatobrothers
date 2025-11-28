import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavigation extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavigation({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: (int index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(LineIcons.rainbow),
            selectedIcon: Icon(LineIcons.rainbow),
            label: 'であう',
          ),
          NavigationDestination(
            icon: Icon(LineIcons.heart),
            selectedIcon: Icon(LineIcons.heartAlt),
            label: 'いいね',
          ),
          NavigationDestination(
            icon: Icon(LineIcons.comments),
            selectedIcon: Icon(LineIcons.comments),
            label: 'チャット',
          ),
          NavigationDestination(
            icon: Icon(LineIcons.camera),
            selectedIcon: Icon(LineIcons.camera),
            // 他のアイコン案
            // icon: Icon(LineIcons.satellite),
            // selectedIcon: Icon(LineIcons.satellite),
            // icon: Icon(LineIcons.paste),
            // selectedIcon: Icon(LineIcons.paste),
            label: 'リポート',
          ),
          NavigationDestination(
            icon: Icon(LineIcons.user),
            selectedIcon: Icon(LineIcons.user),
            label: 'アカウント',
          ),
        ],
      ),
    );
  }
}
