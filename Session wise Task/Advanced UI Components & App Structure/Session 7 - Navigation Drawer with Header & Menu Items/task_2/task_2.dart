import 'package:flutter/material.dart';

class NavigationDrawerScreen extends StatefulWidget {
  const NavigationDrawerScreen({super.key});

  @override
  State<NavigationDrawerScreen> createState() => _NavigationDrawerScreenState();
}

class _NavigationDrawerScreenState extends State<NavigationDrawerScreen> {
  
  GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
     
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        title: Text("Navigation Drawer Screen"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      drawer:  Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                "Tops Technologies",
                style: TextStyle(color: Colors.blue),
              ),
              accountEmail: Text(
                "tops@gmail.com",
                style: TextStyle(color: Colors.blue),
              ),
              decoration: BoxDecoration(color: Colors.transparent),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xFF11AAE3),
                radius: 35,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("assets/images/tops_logo.png"),
                ),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Navigation Drawer",style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
