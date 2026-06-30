import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const FavoritesApp());
}

class FavoritesApp extends StatelessWidget {
  const FavoritesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Favorites App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
