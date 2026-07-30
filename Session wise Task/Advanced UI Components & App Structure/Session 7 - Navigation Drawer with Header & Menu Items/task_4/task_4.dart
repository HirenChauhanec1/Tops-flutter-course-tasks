import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Tops Technologies"),
              accountEmail: Text("tops@gmail.com"),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blue.withValues(alpha: 0.3),
                  Colors.blue.withValues(alpha: 0.7),
                  Colors.blue,
                ],
                  begin:  AlignmentGeometry.topLeft,
                  end: AlignmentGeometry.bottomRight
                )
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xFF11AAE3),
                radius: 35,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/images/tops_logo.png"),
                ),
              ),
            ),

          ],
        ),
      ),

      body: Center(child: Text("Home Screen", style: TextStyle(fontSize: 24))),
    );
  }
}

