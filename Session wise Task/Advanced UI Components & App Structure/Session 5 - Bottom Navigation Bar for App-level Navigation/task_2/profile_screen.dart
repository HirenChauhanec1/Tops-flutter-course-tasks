import 'package:flutter/material.dart';
import 'package:insta_clone/task_2.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key,this.bottomNavItem});

  final BottomNavItem? bottomNavItem;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 20,
        children: [
          Icon(bottomNavItem?.icon ?? Icons.person,size: 75),
          Text(bottomNavItem?.label ?? "Profiles",style: TextStyle(fontSize: 25))
        ],
      ),
    );
  }
}
