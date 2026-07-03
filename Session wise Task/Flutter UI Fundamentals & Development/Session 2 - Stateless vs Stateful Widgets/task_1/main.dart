import 'package:flutter/material.dart';
import 'song_title_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Playing Screen")),
        body: Center(
          child: SongTitleCard(),
        ),
      ),
    );
  }
}