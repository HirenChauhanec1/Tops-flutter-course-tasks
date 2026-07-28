import 'package:flutter/material.dart';
import 'package:insta_clone/task_2.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({super.key,this.bottomNavItem});

  final BottomNavItem? bottomNavItem;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [
          Icon(bottomNavItem?.icon ?? Icons.photo_album,size: 75),
          Text(bottomNavItem?.label ?? "Albums",style: TextStyle(fontSize: 25))
        ],
      ),
    );
  }
}
