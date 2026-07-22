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
      appBar: AppBar(title: const Text('Trending IPL Teams')),
      body: ListView.separated(
      itemCount: teams.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Card(
            child: ListTile(
              leading: Icon(Icons.sports_cricket),
              title: Text(teams[index]),
            ),
          ),
        ), separatorBuilder: (context, index) => SizedBox(height: 12),
      ),
    );
  }
}
