import 'package:flutter/material.dart';

import '../screens/explore_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';

enum BottomNavItem {
  home(icon: Icons.home, label: "Home",currentScreen: HomeScreen()),
  explore(icon: Icons.explore, label: "Explore",currentScreen: ExploreScreen()),
  profile(icon: Icons.person, label: "Profile",currentScreen: ProfileScreen());

  final String label;
  final IconData icon;
  final Widget currentScreen;

  const BottomNavItem({required this.label, required this.icon,required this.currentScreen});

}
