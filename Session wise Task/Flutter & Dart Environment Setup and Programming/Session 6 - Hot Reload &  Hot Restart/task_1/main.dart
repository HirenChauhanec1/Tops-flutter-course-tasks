import 'package:flutter/material.dart';
import 'package:insta_clone/profile_screen.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Text(
              "Hot Reload Rocks!",            // ctrl + \ -> Hot Reload
              style: TextStyle(fontSize: 25),
            )
          ),
        ),
      ),
    );
  }
}
