import 'package:flutter/material.dart';
import 'package:insta_clone/follower_count.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Followers Screen",style: TextStyle(color: Colors.white)),backgroundColor: Colors.blue,),
        body: Center(child : FollowerCountWidget() ),
      ),
    );
  }
}
