import 'package:flutter/material.dart';
import 'package:insta_clone/home_screen.dart';
import 'package:insta_clone/profile_screen.dart';
import 'package:insta_clone/real_device.dart';

void main() {
  runApp(const FoodieExplorerApp());
}

class FoodieExplorerApp extends StatelessWidget {
  const FoodieExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => HomeScreen(),
        "/profile": (context) => ProfileScreen(),
      },
      title: "Foodie Explorer",
    );
  }
}
