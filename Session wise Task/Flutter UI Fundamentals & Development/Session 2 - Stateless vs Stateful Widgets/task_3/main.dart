import 'package:flutter/material.dart';
import 'package:insta_clone/song_title_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Playing Screen")),
        body: Center(child: SongTitleCard()),
      ),
    );
  }
}
