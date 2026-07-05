import 'package:flutter/material.dart';

void main() {
  runApp(InstaProfileApp());
}

class InstaProfileApp extends StatelessWidget {
  const InstaProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MenuBarScreen());
  }
}

class MenuBarScreen extends StatelessWidget {
  const MenuBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Zomato Menu Bar"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.red.shade50,
        padding:  EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            MenuBarItem(title: "Home"),
            MenuBarItem(title: "Orders"),
            MenuBarItem(title: "Offers"),
            MenuBarItem(title: "Profile"),
          ],
        ),
      ),
    );
  }
}

class MenuBarItem extends StatelessWidget {
  MenuBarItem({super.key,required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

