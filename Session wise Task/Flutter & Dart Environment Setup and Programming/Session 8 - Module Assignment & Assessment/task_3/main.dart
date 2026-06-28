import 'package:flutter/material.dart';
import 'user_profile.dart';

void main() {
  UserProfile hirenProfile = UserProfile(           // Instance of UserProfile class
    username: 'Hiren',
    followers: 1200,
    bio: 'Flutter Developer',
  );

  print("UserName : ${hirenProfile.username}");               // Prints the username in the debug console

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
          title: const Text("User Profile",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text("User Profile Screen",style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}