import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IPL Teams',
      home: TrendingTeamsScreen(),
    );
  }
}

class TrendingTeamsScreen extends StatelessWidget {
  const TrendingTeamsScreen({super.key});

  final List<String> teams = const [
    'Chennai Super Kings',
    'Mumbai Indians',
    'Royal Challengers Bengaluru',
    'Kolkata Knight Riders',
    'Rajasthan Royals',
    'Sunrisers Hyderabad',
    'Delhi Capitals',
    'Gujarat Titans',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IPL Teams"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(teams[0], style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(teams[1], style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(teams[2], style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(teams[3], style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(teams[4], style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(teams[5], style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(teams[6], style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Text(teams[7], style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
