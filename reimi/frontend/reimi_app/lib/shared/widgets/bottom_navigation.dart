import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:reimi_app/i18n/strings.g.dart';

class BottomNavigation extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const BottomNavigation({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
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
        destinations: [
          NavigationDestination(
            icon: const Icon(LineIcons.rainbow),
            selectedIcon: const Icon(LineIcons.rainbow),
            label: t.navigationBar.home.title,
          ),
          NavigationDestination(
            icon: const Icon(LineIcons.heart),
            selectedIcon: const Icon(LineIcons.heartAlt),
            label: t.navigationBar.like.title,
          ),
          NavigationDestination(
            icon: const Icon(LineIcons.comments),
            selectedIcon: const Icon(LineIcons.comments),
            label: t.navigationBar.chat.title,
          ),
          NavigationDestination(
            icon: const Icon(LineIcons.camera),
            selectedIcon: const Icon(LineIcons.camera),
            // 他のアイコン案
            // icon: Icon(LineIcons.satellite),
            // selectedIcon: Icon(LineIcons.satellite),
            // icon: Icon(LineIcons.paste),
            // selectedIcon: Icon(LineIcons.paste),
            label: t.navigationBar.weatherReport.title,
          ),
          NavigationDestination(
            icon: const Icon(LineIcons.user),
            selectedIcon: const Icon(LineIcons.user),
            label: t.navigationBar.account.title,
          ),
        ],
      ),
    );
  }
}
