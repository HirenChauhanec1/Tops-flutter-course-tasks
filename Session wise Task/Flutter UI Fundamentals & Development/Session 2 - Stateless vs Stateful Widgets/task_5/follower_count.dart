import 'package:flutter/material.dart';

class FollowerCountWidget extends StatefulWidget {
  const FollowerCountWidget({super.key});

  @override
  State<FollowerCountWidget> createState() => _FollowerCountWidgetState();
}

class _FollowerCountWidgetState extends State<FollowerCountWidget> {
  int followers = 9000;
  bool milestoneShown = false;

  void incrementFollowers() {
    setState(() {
      followers += 1000;

      if (followers >= 10000 && !milestoneShown) {
        milestoneShown = true;

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("🎉 Milestone reached!"),
            duration: Duration(seconds: 2),
          ),
        );
      }
    });
  }

  String formatCount(int value) {
    if (value >= 1000000) {
      return "${(value / 1000000).toStringAsFixed(1)}M";
    } else if (value >= 1000) {
      return "${(value / 1000).toStringAsFixed(1)}K";
    } else {
      return value.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "YouTube Followers",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              formatCount(followers),
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: incrementFollowers,
              child: const Text("Add 1000 Followers"),
            ),
          ],
        ),
      ),
    );
  }
}
