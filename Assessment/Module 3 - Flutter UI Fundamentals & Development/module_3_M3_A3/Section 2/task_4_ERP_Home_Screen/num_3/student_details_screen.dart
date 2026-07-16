import 'package:flutter/material.dart';

class StudentDetailScreen extends StatelessWidget {
  final String studentName;
  final double cgpa;

   const StudentDetailScreen({
    super.key,
    required this.studentName,
    required this.cgpa,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Student Profile'),
      ),
      body: Padding(
        padding:  EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               CircleAvatar(
                radius: 50,
                child: Icon(Icons.person, size: 50),
              ),
               SizedBox(height: 24),
              Text(
                studentName,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
              ),
               SizedBox(height: 8),
              Text(
                'CGPA: ${cgpa.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}