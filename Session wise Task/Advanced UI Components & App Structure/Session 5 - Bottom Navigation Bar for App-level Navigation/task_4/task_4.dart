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

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav Screen"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          BottomNavItem.values[selectedIndex].label,
          style: TextStyle(fontSize: 25),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,

        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

        items: BottomNavItem.values.indexed
            .map(
              (entry) => BottomNavigationBarItem(
                icon: Icon(entry.$1 == selectedIndex ? entry.$2.activeIcon : entry.$2.icon),
                label: entry.$2.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
