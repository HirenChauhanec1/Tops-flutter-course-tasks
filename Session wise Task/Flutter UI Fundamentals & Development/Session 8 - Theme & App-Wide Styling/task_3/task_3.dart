import 'package:flutter/material.dart';

void main() {
  runApp(MyMusicThemeApp());
}

class MyMusicThemeApp extends StatelessWidget {
  const MyMusicThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMusicTheme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
            backgroundColor: Colors.green,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MyMusicTheme')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Login")
        ),
      ),
    );
  }
}
