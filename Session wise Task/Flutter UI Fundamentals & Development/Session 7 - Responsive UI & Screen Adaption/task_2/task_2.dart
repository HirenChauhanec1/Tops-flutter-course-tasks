import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          Expanded(child: Icon(Icons.grid_on_outlined)),
          Expanded(child: Icon(Icons.video_library_outlined)),
          Expanded(child: Icon(Icons.person_pin_outlined)),
        ],
      ),
    );
  }
}
