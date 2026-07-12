import 'package:flutter/material.dart';
import 'package:insta_clone/home_screen.dart';
import 'package:insta_clone/shpooing_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: DashBoardScreens.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Food Delivery App"),
          backgroundColor: Colors.brown.withValues(alpha: 0.3),
          bottom: TabBar(
            tabs: DashBoardScreens.values
                .map((entry) => Tab(text: entry.label, icon: Icon(entry.icon)))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            ShoppingScreen()
          ],
        ),
      ),
    );
  }
}

enum DashBoardScreens {
  home(icon: Icons.home_outlined, label: "Home"),
  shopping(icon: Icons.shopping_bag_outlined, label: "Shopping");

  final IconData icon;
  final String label;

  const DashBoardScreens({required this.icon, required this.label});
}
