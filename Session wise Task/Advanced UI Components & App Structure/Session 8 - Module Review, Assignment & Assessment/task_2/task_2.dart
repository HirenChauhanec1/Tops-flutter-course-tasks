import 'package:flutter/material.dart';
import 'package:insta_clone/screens/orders_screen.dart';
import 'package:insta_clone/screens/profile_screen.dart';

import 'screens/home_screen.dart';

enum BottomNavItem {
  home(label: "Home", icon: Icons.home,currentScreen: HomeScreen()),
  orders(label: "orders", icon: Icons.receipt_long,currentScreen: OrdersScreen()),
  profile(label: "profile", icon: Icons.person,currentScreen: ProfileScreen());

  final String label;
  final IconData icon;
  final Widget currentScreen;

  const BottomNavItem({required this.label, required this.icon,required this.currentScreen});

}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  Widget currentScreen = BottomNavItem.values.first.currentScreen;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Delivery Dashboard"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
            currentScreen = BottomNavItem.values[index].currentScreen;
          });
        },
        items: BottomNavItem.values
            .map((bottomNavItem) =>
            BottomNavigationBarItem(
                icon: Icon(bottomNavItem.icon), label: bottomNavItem.label))
            .toList(),
      ),
    );
  }
}
