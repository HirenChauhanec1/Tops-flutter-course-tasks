import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentCard extends StatelessWidget {
  final Student student;

  const StudentCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: const Icon(Icons.person),
        title: Text(student.name),
        subtitle: Text("Semester Fee: ₹${student.semesterFee}"),
        trailing: Icon(
          student.isEnrolled ? Icons.check_circle : Icons.cancel,
          color: student.isEnrolled ? Colors.green : Colors.red,
        ),
      ),
    );
  }
}