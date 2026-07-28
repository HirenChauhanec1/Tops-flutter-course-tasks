import 'package:flutter/material.dart';

enum BottomNavItem {
  songs(label: "Songs", icon: Icons.music_note),
  albums(label: "Albums", icon: Icons.photo_album),
  profile(label: "Profile", icon: Icons.person);

  final String label;
  final IconData icon;

  const BottomNavItem({required this.label, required this.icon});
}

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  String selectedItemLabel = BottomNavItem.songs.label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Nav Screen"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: selectedIndex,
        onTap: (value) => setState(() {
          selectedIndex = value;
          selectedItemLabel = BottomNavItem.values[value].label;
        }),
        items: BottomNavItem.values
            .map(
              (bottomNavItem) => BottomNavigationBarItem(
                icon: Icon(bottomNavItem.icon),
                label: bottomNavItem.label,
              ),
            )
            .toList(),
        selectedItemColor: Colors.white,
      ),
      body: Center(
        child: Text(
          selectedItemLabel,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
