import 'package:flutter/material.dart';
import 'package:insta_clone/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Button", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            spacing: 20,
            children: [
              CustomBotton(
                text: "Login",
                backgroundColor: Colors.blue,
                onPressed: () {
                  print("Login tapped");
                },
              ),
              CustomBotton(
                text: "Sign Up",
                backgroundColor: Colors.green,
                onPressed: () {
                  print("Sign Up tapped");
                },
              ),
              CustomBotton(
                text: "Delete",
                backgroundColor: Colors.red,
                onPressed: () {
                  print("Delete tapped");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
