import 'package:flutter/material.dart';
import 'app_drawer.dart';

class NavigationDrawerScreen extends StatefulWidget {
   const NavigationDrawerScreen({super.key});

  @override
  State<NavigationDrawerScreen> createState() =>
      _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        title:  Text("Navigation Drawer Screen"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      drawer:  AppDrawer(),
      body:  Center(
        child: Text(
          "Navigation Drawer",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}