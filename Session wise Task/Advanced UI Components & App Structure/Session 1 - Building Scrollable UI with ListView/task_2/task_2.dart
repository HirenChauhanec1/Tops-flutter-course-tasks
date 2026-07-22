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
      home: const TrendingTeamsScreen(),
    );
  }
}

class TrendingTeamsScreen extends StatelessWidget {
  const TrendingTeamsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trending IPL Teams'),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.sports_cricket),
                title: Text('Chennai Super Kings'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.sports_cricket),
                title: Text('Mumbai Indians'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.sports_cricket),
                title: Text('Royal Challengers Bengaluru'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.sports_cricket),
                title: Text('Kolkata Knight Riders'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.sports_cricket),
                title: Text('Rajasthan Royals'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.sports_cricket),
                title: Text('Sunrisers Hyderabad'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.sports_cricket),
                title: Text('Delhi Capitals'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Card(
              child: ListTile(
                leading: Icon(Icons.sports_cricket),
                title: Text('Gujarat Titans'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}