import 'package:campus_edge/models/student.dart';
import 'package:campus_edge/screens/enrollment_screen.dart';
import 'package:campus_edge/screens/fee_receipt_screen.dart';
import 'package:campus_edge/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CampusEdgeApp());
}

class CampusEdgeApp extends StatelessWidget {
  const CampusEdgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Student Enrollment",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          primary: Colors.blue,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {'/': (context) => HomeScreen()},
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/enrollment':
            {
              var arguments = settings.arguments as List<Student>;
              return PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    EnrolmentScreen(enrolledStudents: arguments),
              );
            }
          case '/receipt':
            {
              var arguments = settings.arguments as double;
              return PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    FeeReceiptScreen(totalFee: arguments),
              );
            }
        }
        return null;
      },
    );
  }
}
