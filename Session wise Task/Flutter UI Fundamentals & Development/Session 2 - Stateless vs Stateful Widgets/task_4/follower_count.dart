import 'package:flutter/material.dart';

class FollowerCountWidget extends StatefulWidget {
  const FollowerCountWidget({super.key});

  @override
  State<FollowerCountWidget> createState() => _FollowerCountWidgetState();
}

class _FollowerCountWidgetState extends State<FollowerCountWidget> {
  int followers = 1200; // starting value

  void incrementFollowers() {
    setState(() {
      followers += 1000;
    });
  }

  String formatCount(int value) {
    if (value >= 1000000) {
      return "${(value / 1000000).toStringAsFixed(1)}M";
    } else if (value >= 1000) {
      double kValue = value / 1000;
      return "${kValue.toStringAsFixed(1)}K";
    } else {
      return value.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "YouTube Followers",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            Text(
              formatCount(followers),
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),

            SizedBox(height: 15),

            ElevatedButton(
              onPressed: incrementFollowers,
              child: Text("Subscribe +1000"),
            ),
          ],
        ),
      ),
    );
  }
}