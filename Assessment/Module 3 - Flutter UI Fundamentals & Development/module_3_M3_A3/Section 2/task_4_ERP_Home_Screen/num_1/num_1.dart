import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampusEdge',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          primary: Colors.indigo,
          secondary: Colors.amberAccent,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      home: const CampusEdgeHomeScreen(),
    );
  }
}

class CampusEdgeHomeScreen extends StatefulWidget {
  const CampusEdgeHomeScreen({super.key});

  @override
  State<CampusEdgeHomeScreen> createState() => _CampusEdgeHomeScreenState();
}

class _CampusEdgeHomeScreenState extends State<CampusEdgeHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CampusEdge',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Mobile Application Development",
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(fontSize: 26),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
