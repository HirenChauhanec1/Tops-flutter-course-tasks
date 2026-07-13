import 'package:flutter/material.dart';
import 'song_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("My Music"),
      ),
      body: ListView(
        children: [
          SongTile(
            songName: "Humnava",
            onPressed: () {},
          ),
          SongTile(
            songName: "Ve Junoon",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}