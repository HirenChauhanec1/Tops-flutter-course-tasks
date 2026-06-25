import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"), backgroundColor: Colors.blue),
      body: Center(
        child: Text(
          "Welcome to InstaClone!",
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      ),
    );
  }
}
