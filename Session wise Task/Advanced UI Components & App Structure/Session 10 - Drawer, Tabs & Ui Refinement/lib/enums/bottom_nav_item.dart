import 'package:flutter/material.dart';
import 'package:insta_clone/screens/home_screen.dart';

import '../screens/explore_screen.dart';
import '../screens/profile_screen.dart';

enum DrawerNavItem {
  home(
    icon: Icons.home_outlined,
    activeIcon: Icons.home,
    label: "Home",
    currentScreen: HomeScreen(),
  ),
  explore(
    icon: Icons.explore_outlined,
    activeIcon: Icons.explore,
    label: "Explore",
    currentScreen: ExploreScreen(),
  ),
  profile(
    icon: Icons.person_outlined,
    activeIcon: Icons.person,
    label: "Profile",
    currentScreen: ProfileScreen(),
  );

  final String label;
  final IconData icon;
  final Widget currentScreen;
  final IconData activeIcon;

  const DrawerNavItem({
    required this.label,
    required this.icon,
    required this.currentScreen,
    required this.activeIcon,
  });
}
