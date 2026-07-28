import 'package:flutter/material.dart';
import 'package:insta_clone/task_2.dart';

class SongsScreen extends StatelessWidget {
  const SongsScreen({super.key,this.bottomNavItem});

  final BottomNavItem? bottomNavItem;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [
          Icon(bottomNavItem?.icon ?? Icons.music_note,size: 75),
          Text(bottomNavItem?.label ?? "Songs", style: TextStyle(fontSize: 25))
        ],
      ),
    );
  }
}
