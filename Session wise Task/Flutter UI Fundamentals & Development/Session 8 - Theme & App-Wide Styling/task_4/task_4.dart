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
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 20,
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
        child: Text(
          "Theme",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w400,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
