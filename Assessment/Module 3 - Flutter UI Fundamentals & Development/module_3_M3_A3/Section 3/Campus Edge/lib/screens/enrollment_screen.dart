import 'package:flutter/material.dart';
import '../models/student.dart';

class EnrolmentScreen extends StatefulWidget {
   const EnrolmentScreen({super.key, required this.enrolledStudents});

  final List<Student> enrolledStudents;

  @override
  State<EnrolmentScreen> createState() => _EnrolmentScreenState();
}

class _EnrolmentScreenState extends State<EnrolmentScreen> {

  TextEditingController nameController = TextEditingController();
  TextEditingController feeController = TextEditingController();
  
  double totalFee = 0;

  @override
  void initState() {
    super.initState();
    calculateFee();
  }

  void calculateFee() {
    totalFee = 0;

    for (var student in widget.enrolledStudents) {
      totalFee += student.semesterFee;
    }
  }

  void addStudent() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding:  EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 Text(
                  "Add Student",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                 SizedBox(height: 16),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    labelText: "Name",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                 SizedBox(height: 12),
                TextField(
                  controller: feeController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Fee",
                    labelText: "Semester Fee",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                 SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child:  Text("Cancel"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (nameController.text.isNotEmpty && feeController.text.isNotEmpty) {
                          setState(() {
                            widget.enrolledStudents.add(
                              Student(
                                name: nameController.text,
                                semesterFee: double.tryParse(feeController.text) ?? 0.0,
                                isEnrolled: true,
                              ),
                            );
                            calculateFee();
                          });
                          nameController.clear();
                          feeController.clear();
                          Navigator.pop(context);
                        }
                      },
                      child:  Text("Add"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void removeStudent(int index) {
    setState(() {
      widget.enrolledStudents.removeAt(index);
      calculateFee();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Colors.white,
          title:  Text("Enrolment")
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: widget.enrolledStudents.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.enrolledStudents[index].name),
                    subtitle: Text(
                      "₹${widget.enrolledStudents[index].semesterFee}",
                    ),
                    trailing: IconButton(
                      icon:  Icon(Icons.delete),
                      onPressed: () => removeStudent(index),
                    ),
                  );
                },
              ),
            ),
            Text(
              "Total Fee: ₹$totalFee",
              style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: addStudent,
              child:  Text("Add Student"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/receipt', arguments: totalFee);
              },
              child:  Text("Generate Receipt"),
            ),
          ],
        ),
      ),
    );
  }
}
