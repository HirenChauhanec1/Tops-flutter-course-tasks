import 'package:flutter/material.dart';
import 'package:insta_clone/albums_screen.dart';
import 'package:insta_clone/profile_screen.dart';
import 'package:insta_clone/songs_screen.dart';

enum BottomNavItem {
  songs(
    label: "Songs",
    icon: Icons.music_note,
    currentScreen: SongsScreen(),
  ),
  albums(
    label: "Albums",
    icon: Icons.photo_album,
    currentScreen: AlbumsScreen(),
  ),
  profile(
    label: "Profile",
    icon: Icons.person,
    currentScreen: ProfileScreen(),
  );

  final String label;
  final IconData icon;
  final Widget currentScreen;

  const BottomNavItem({
    required this.label,
    required this.icon,
    required this.currentScreen,
  });
}

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  int selectedItem = 0;
  String selectedItemLabel = BottomNavItem.values[0].label;
  Widget currentScreen = BottomNavItem.values[0].currentScreen;

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
        currentIndex: selectedItem,
        onTap: (value) => setState(() {
          selectedItem = value;
          currentScreen = BottomNavItem.values[value].currentScreen;
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
      body: currentScreen,
    );
  }
}
