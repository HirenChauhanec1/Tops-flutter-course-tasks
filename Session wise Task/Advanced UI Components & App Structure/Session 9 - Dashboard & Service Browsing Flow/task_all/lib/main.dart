import 'package:flutter/material.dart';

import 'enums/bottom_nav_item.dart';

void main() {
  runApp(ServiceHubApp());
}

class ServiceHubApp extends StatelessWidget {
  const ServiceHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentIndex = 0;
  Widget currentScreen = BottomNavItem.values.first.currentScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
            currentScreen = BottomNavItem.values[value].currentScreen;
          });
        },
        items: BottomNavItem.values
            .map(
              (bottomNavItem) => BottomNavigationBarItem(
                icon: Icon(bottomNavItem.icon),
                label: bottomNavItem.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
