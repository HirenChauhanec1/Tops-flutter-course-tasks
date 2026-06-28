import 'package:flutter/material.dart';
import 'package:insta_clone/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,   // ctrl + shift + \ => Hot ReStart
        useMaterial3: false, 
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
