import 'package:flutter/material.dart';
import '../models/student.dart';
import '../widgets/student_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Student> students = [
    Student(name: "Hiren", semesterFee: 25000, isEnrolled: true),
    Student(name: "Narendra", semesterFee: 30000, isEnrolled: false),
    Student(name: "Vivek", semesterFee: 28000, isEnrolled: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: Text("Student Home"),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return StudentCard(student: students[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/enrollment',
            arguments: students,
          );
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}