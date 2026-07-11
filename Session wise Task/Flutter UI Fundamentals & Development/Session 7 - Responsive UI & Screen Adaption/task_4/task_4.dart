import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // width: 400,                                    // before
          width: MediaQuery.of(context).size.width * 0.8,   // after
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text("Hello! How are you?",style: TextStyle(color: Colors.white))
        ),
      ),
    );
  }
}
