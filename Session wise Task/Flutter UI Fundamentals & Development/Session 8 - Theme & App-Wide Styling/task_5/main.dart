import 'package:flutter/material.dart';
import 'package:insta_clone/home_screen.dart';

void main() {
  runApp(const MyMusicThemeApp());
}

class MyMusicThemeApp extends StatelessWidget {
  const MyMusicThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:  TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}