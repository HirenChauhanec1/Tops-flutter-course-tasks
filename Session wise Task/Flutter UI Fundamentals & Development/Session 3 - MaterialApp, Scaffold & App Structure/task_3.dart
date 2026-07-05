import 'package:flutter/material.dart';

void main() {
  runApp(InstaProfileApp());
}

class InstaProfileApp extends StatelessWidget {
  const InstaProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstaProfile(),
    );
  }
}

class InstaProfile extends StatelessWidget {
  const InstaProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Profile'),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                debugPrint('Search icon tapped');
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                debugPrint('Settings icon tapped');
              },
            ),
          ],
        ),
        body: const Center(
          child: Text(
            'Instagram Profile',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
