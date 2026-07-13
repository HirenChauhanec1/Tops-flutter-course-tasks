import 'package:flutter/material.dart';

void main() {
  runApp(MyMusicThemeApp());
}

class MyMusicThemeApp extends StatelessWidget {
const    MyMusicThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMusicTheme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "poppins",
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
   const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('MyMusicTheme'),
      ),
      body: Center(child: Text('Play Music'))
    );
  }
}