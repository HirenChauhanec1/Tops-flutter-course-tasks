import 'package:flutter/material.dart';
import 'package:insta_clone/home_screen.dart';
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
      title: "Foodie Explorer",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Foodie Explorer Home",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
