import 'package:flutter/material.dart';

class FeeReceiptScreen extends StatelessWidget {
  const FeeReceiptScreen({super.key,required this.totalFee});

  final double totalFee;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: Text("Fee Receipt"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Semester Fee",
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 10),
            Text(
              "₹$totalFee",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Enrolment Confirmed ›",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}