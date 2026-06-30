import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> tappedTimeList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  tappedTimeList.add(DateTime.now().toString());
                });
              },
              child: const Text('Add Current Time'),
            ),
            const SizedBox(height: 20),
            ...tappedTimeList.map(
              (time) => Text(time, style: const TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
