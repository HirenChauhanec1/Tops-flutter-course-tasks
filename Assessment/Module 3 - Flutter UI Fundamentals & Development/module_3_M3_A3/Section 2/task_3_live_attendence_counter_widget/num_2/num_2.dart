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

  void _incrementCount() {
    if (presentCount < totalStudents) {
      setState(() {
        presentCount++;
      });
    }
  }

  void _decrementCount() {
    if (presentCount > 0) {
      setState(() {
        presentCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Attendance Tracker'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(24.0),
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
               SizedBox(height: 24),
              Card(
                elevation: 4,
                child: Padding(
                  padding:  EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Text(
                        'Total Students: $totalStudents',
                        style:  TextStyle(fontSize: 18),
                      ),
                       SizedBox(height: 12),
                      Text(
                        'Present: $presentCount',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _decrementCount ,
                    style: ElevatedButton.styleFrom(
                      padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      backgroundColor: Colors.red.shade100,
                      foregroundColor: Colors.red.shade900,
                    ),
                    child:  Icon(Icons.remove),
                  ),
                   SizedBox(width: 24),
                  ElevatedButton(
                    onPressed: _incrementCount ,
                    style: ElevatedButton.styleFrom(
                      padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      backgroundColor: Colors.green.shade100,
                      foregroundColor: Colors.green.shade900,
                    ),
                    child:  Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
