import 'package:flutter/material.dart';
import 'package:insta_clone/ai_code/student.dart';

class EnrolmentScreen extends StatefulWidget {
  const EnrolmentScreen({super.key});

  @override
  State<EnrolmentScreen> createState() => _EnrolmentScreenState();
}

class _EnrolmentScreenState extends State<EnrolmentScreen> {
  List<Student> enrolledStudents = [
    Student(
      name: "Rahul",
      rollNumber: "101",
      semesterFee: 25000,
      isEnrolled: true,
    ),
    Student(
      name: "Priya",
      rollNumber: "102",
      semesterFee: 30000,
      isEnrolled: true,
    ),
    Student(
      name: "Amit",
      rollNumber: "103",
      semesterFee: 28000,
      isEnrolled: true,
    ),
  ];

  String status = "Pending";

  double get totalFee {
    double total = 0;
    for (var student in enrolledStudents) {
      total += student.semesterFee;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enrolment"),
      ),
      body: enrolledStudents.isEmpty
          ? const Center(
        child: Text(
          "No students enrolled yet",
          style: TextStyle(fontSize: 20),
        ),
      )
          : Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: enrolledStudents.length,
              itemBuilder: (context, index) {
                final student = enrolledStudents[index];

                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(student.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Roll No: ${student.rollNumber}"),
                        Text("Semester Fee: ₹${student.semesterFee}"),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Total Semester Fees: ₹${totalFee.toStringAsFixed(0)}",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              setState(() {
                status = "Enrolment Finalised ›";
              });
            },
            child: const Text("Confirm Enrolment"),
          ),
          const SizedBox(height: 10),
          Text(
            status,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}