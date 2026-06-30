import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String message = 'Flutter!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  message = 'Updated!';
                });
              },
              child: Text('Update Text'),
            ),
            SizedBox(height: 10),
            Text('Press the button above', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Text(message, style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
