import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                isFollowing = !isFollowing;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: isFollowing ? Colors.grey.shade500 : Colors.blue,
              foregroundColor: isFollowing ? Colors.black : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              elevation: 3,
              minimumSize: Size(120,40)
            ),
            child: Text(isFollowing ? "Following" : "Follow"),
          ),
        ),
      ),
    );
  }
}
