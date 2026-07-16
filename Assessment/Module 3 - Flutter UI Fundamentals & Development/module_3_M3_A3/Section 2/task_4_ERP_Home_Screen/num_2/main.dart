import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampusEdge',
      debugShowCheckedModeBanner: false,
      home: CampusEdgeHomeScreen(),
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
        title: Text('CampusEdge'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            StudentSummaryCard(
              studentName: 'Hiren Chauhan',
              cgpa: 9.00,
              qualification: "B.Tech Electrical",
            ),
            StudentSummaryCard(
              studentName: 'Narendra Lila',
              cgpa: 9.00,
              qualification: "B.Tech Electrical",
            ),
          ],
        ),
      ),
    );
  }
}

class StudentSummaryCard extends StatelessWidget {
  final String studentName, qualification;
  final double cgpa;

  const StudentSummaryCard({
    super.key,
    required this.studentName,
    required this.cgpa,
    required this.qualification,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 16.0),
            decoration: BoxDecoration(
              color: Colors.indigo.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person_rounded, color: Colors.indigo, size: 28),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  studentName,
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(
                  qualification,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 4.0),
              Text(
                'CGPA: ${cgpa.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: cgpa >= 3.5 ? Colors.green[800] : Colors.amber[900],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
