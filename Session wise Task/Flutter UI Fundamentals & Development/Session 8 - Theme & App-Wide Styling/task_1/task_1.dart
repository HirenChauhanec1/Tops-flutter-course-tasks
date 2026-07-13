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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          primary: Colors.purple,
          secondary: Colors.orange, // Accent color
        ),
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
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child:  Text('Play Music'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child:  Icon(Icons.music_note),
      ),
    );
  }
}