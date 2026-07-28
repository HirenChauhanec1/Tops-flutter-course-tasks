import 'package:flutter/material.dart';
import 'package:insta_clone/custom_bottom_nav.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;

  void selectScreenLabel(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Nav Screen"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Text(BottomNavItem.values[selectedIndex].label,style: TextStyle(fontSize: 25),)),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: selectedIndex,
        onTab: selectScreenLabel,
      ),
    );
  }
}
