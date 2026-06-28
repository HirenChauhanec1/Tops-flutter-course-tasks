import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            spacing: 10,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Count : $count",style: TextStyle(fontSize: 20)),
              ElevatedButton(
                onPressed: () {
                  count++;                          // remove setState()
                  print("Count : $count");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                child: Text("Increase Count",style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
