import 'package:flutter/material.dart';

enum BottomNavItem {
  home(icon: Icons.home_outlined, activeIcon: Icons.home, label: "Home"),
  search(
    icon: Icons.search_outlined,
    activeIcon: Icons.search,
    label: "Search",
  ),
  favourite(
    icon: Icons.favorite_border,
    activeIcon: Icons.favorite,
    label: "Favourites",
  ),
  profile(
    icon: Icons.person_outline,
    activeIcon: Icons.person,
    label: "Profile",
  );

  final IconData icon, activeIcon;
  final String label;

  const BottomNavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}


class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTab,
  });

  final int currentIndex;
  final ValueChanged<int> onTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTab,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: BottomNavItem.values.map((item) {
        return BottomNavigationBarItem(
          icon: Icon(item.icon),
          activeIcon: Icon(item.activeIcon),
          label: item.label,
        );
      }).toList(),
    );
  }
}