import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClassTrackerScreen(),
    );
  }
}

class ClassTrackerScreen extends StatefulWidget {
  const ClassTrackerScreen({super.key});

  @override
  State<ClassTrackerScreen> createState() => _ClassTrackerScreenState();
}

class _ClassTrackerScreenState extends State<ClassTrackerScreen> {

  final String className = 'Mobile Application Development';
  final int totalStudents = 40;
  int presentCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Class Attendance'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                className,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Total Students: $totalStudents',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Present: $presentCount',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
