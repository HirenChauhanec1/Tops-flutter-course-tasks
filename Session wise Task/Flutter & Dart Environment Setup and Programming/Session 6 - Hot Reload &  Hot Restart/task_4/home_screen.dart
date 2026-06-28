import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // When we change the primarySwatch color in the theme and perform a Hot Restart,
  // the background color of the AppBar, FloatingActionButton, Buttons, and other
  // widgets that use the primarySwatch color are updated accordingly.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Theme Demo")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: ElevatedButton(onPressed: () {}, child: Text("Click Me")),
        ),
      ),
    );
  }
}
