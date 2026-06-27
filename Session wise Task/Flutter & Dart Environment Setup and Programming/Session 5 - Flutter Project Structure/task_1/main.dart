import 'package:flutter/material.dart';
import 'package:insta_clone/home_screen.dart';
import 'package:insta_clone/real_device.dart';

void main() {
  runApp(const MyCoolApp());
}

class MyCoolApp extends StatelessWidget {
  const MyCoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Cool App", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(
              "Hello from MyCoolApp!",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
